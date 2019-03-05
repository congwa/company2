<template>
	<div class="content-page">
		<div class="content-nav">
			<el-breadcrumb class="breadcrumb" separator="/">
				<el-breadcrumb-item :to="{ path: '/dashboard' }">首页</el-breadcrumb-item>
				<el-breadcrumb-item>店铺运营</el-breadcrumb-item>
				<el-breadcrumb-item>banner管理</el-breadcrumb-item>
			</el-breadcrumb>
			<div class="operation-nav">
				<router-link to="/dashboard/operate/banner/add">
					<el-button type="primary" icon="plus">添加banner(首页轮播)</el-button>
				</router-link>
			</div>
		</div>
		<div class="content-main">
			<!-- <div class="filter-box">
				<el-form :inline="true" :model="filterForm" class="demo-form-inline">
					<el-form-item label="专题名称">
						<el-input v-model="filterForm.name" placeholder="专题名称"></el-input>
					</el-form-item>
					<el-form-item>
						<el-button type="primary" @click="onSubmitFilter">查询</el-button>
					</el-form-item>
				</el-form>
			</div> -->
			<div class="form-table-box">
				<el-table :data="tableData" style="width: 100%" border stripe>
					<el-table-column prop="id" label="ID" width="100">
					</el-table-column>
					<el-table-column prop="name" label="banner名称">
					</el-table-column>
					<el-table-column prop="enabled" label="是否显示" width="100">
						<template scope="scope">
							{{ scope.row.enabled == 1 ? '是' : '否' }}
						</template>
					</el-table-column>
					<!-- <el-table-column prop="sort_order" label="排序" width="80"> -->
					</el-table-column>
					<el-table-column label="操作" width="140">
						<template scope="scope">
							<el-button size="small" @click="handleRowEdit(scope.$index, scope.row)">编辑</el-button>
							<el-button size="small" type="danger" @click="handleRowDelete(scope.$index, scope.row)">删除</el-button>
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
			
			filterForm: {
				name: ''
			},
			tableData: []
		}
	},
	methods: {
		handlePageChange(val) {
			this.getList()
		},
		handleRowEdit(index, row) {
			this.$router.push({ name: 'banner_add', query: { id: row.id } })
		},
		handleRowDelete(index, row) {

			this.$confirm('确定要删除?', '提示', {
				confirmButtonText: '确定',
				cancelButtonText: '取消',
				type: 'warning'
			}).then(() => {

				this.axios.post('banner/delete', { id: row.id }).then((response) => {
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
			this.getList()
		},
		getList() {
			this.axios.get('banner/index').then((response) => {
				console.log('banner: ',response);
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

</style>
