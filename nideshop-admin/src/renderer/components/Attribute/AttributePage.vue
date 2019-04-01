<template>
	<div class="content-page">
		<div class="content-nav">
			<el-breadcrumb class="breadcrumb" separator="/">
				<el-breadcrumb-item :to="{ path: '/dashboard' }">首页</el-breadcrumb-item>
				<el-breadcrumb-item>属性管理</el-breadcrumb-item>
				<el-breadcrumb-item>商品属性列表</el-breadcrumb-item>
			</el-breadcrumb>
			<div class="operation-nav">
				<router-link to="/dashboard/attribute/add">
					<el-button type="primary" icon="plus">添加商品属性</el-button>
				</router-link>
			</div>
		</div>
		<div class="content-main">
			<div class="form-table-box">
				<el-table :data="tableData" style="width: 100%" border stripe>
					<el-table-column prop="name" label="分类名称">
						<template scope="scope">
							{{ scope.row.level == 2 ? '　  ' : '' }} {{scope.row.name}}
						</template>
					</el-table-column>
					<el-table-column prop="is_show" label="是否启用" width="100">
						<template scope="scope">
              {{!scope.row.enabled && scope.row.level ==1 ? '否' : ''}}
							{{ (scope.row.enabled== 1 && scope.row.level ==1)  ? '是' : '' }}
						</template>
					</el-table-column>
					<el-table-column label="操作" width="140">
						<template scope="scope">
							<el-button v-if="scope.row.level ==2" size="small" @click="handleRowEdit(scope.$index, scope.row)">编辑</el-button>
							<el-button v-if="scope.row.level ==2" size="small" type="danger" @click="handleRowDelete(scope.$index, scope.row)">删除</el-button>
						</template>
					</el-table-column>
				</el-table>
			</div>
		</div>
	</div>
</template>

<script>

  export default {
    data() {
      return {
        page: 1,
        total: 0,
        filterForm: {
          name: ''
        },
        tableData: []
      }
    },
    methods: {
      handlePageChange(val) {
        this.page = val;
        //保存到localStorage
        localStorage.setItem('brandPage', this.page)
        localStorage.setItem('brandFilterForm', JSON.stringify(this.filterForm));
        this.getList()
      },
      handleRowEdit(index, row) {
        this.$router.push({ name: 'attribute_add', query: { id: row.id } })
      },
      handleRowDelete(index, row) {

        this.$confirm('确定要删除?', '提示', {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          type: 'warning'
        }).then(() => {

          this.axios.post('attribute/delete', { id: row.id }).then((response) => {
            console.log(response.data)
            if (response.data.errno === 0) {
              this.$message({
                type: 'success',
                message: '删除成功!'
              });

              this.getList();
            }
          })
        });
      },
      onSubmitFilter() {
        this.page = 1
        this.getList()
      },
      getList() {
        this.axios.get('attribute/index', {
          params: {
            page: this.page,
            name: this.filterForm.name
          }
        }).then((response) => {
          this.tableData = response.data.data
        })
      }
    },
    components: {

    },
    mounted() {
      this.getList();
    }
  }

</script>

<style scoped>
.sub-category .el-table__expanded-cell{
	padding: 0;
}
</style>
