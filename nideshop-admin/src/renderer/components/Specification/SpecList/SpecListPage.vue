<template>
  <div class="content-page">
    <div class="content-nav">
      <el-breadcrumb class="breadcrumb" separator="/">
        <el-breadcrumb-item :to="{ path: '/dashboard' }"
          >首页</el-breadcrumb-item
        >
        <el-breadcrumb-item>商品管理</el-breadcrumb-item>
        <el-breadcrumb-item>商品列表</el-breadcrumb-item>
        <el-breadcrumb-item>商品规格列表</el-breadcrumb-item>
      </el-breadcrumb>
      <div class="operation-nav">
        <router-link to="/dashboard/goods">
          <el-button type="primary" icon="plus">返回上一页</el-button>
        </router-link>
        <el-button type="primary" @click="handleRowEdit" icon="plus"
          >添加规格信息</el-button
        >
      </div>
    </div>
    <div class="content-main">
      <div class="form-table-box">
        <el-table :data="tableData" style="width: 100%" border stripe>
          <el-table-column prop="value" label="规格内容"> </el-table-column>
          <el-table-column prop="pic_url" label="规格显示图片">
            <template scope="scope">
              <img class="spec-img" :src="scope.row.pic_url" alt="规格图片" />
            </template>
          </el-table-column>
          <el-table-column prop="retail_price" label="此规格价格">
          </el-table-column>
          <el-table-column prop="goods_number" label="此规格库存">
          </el-table-column>
          <el-table-column label="操作" width="140">
            <template scope="scope">
              <el-button
                size="small"
                @click="handleRowEdit(scope.$index, scope.row);"
                >添加</el-button
              >
              <el-button
                size="small"
                type="danger"
                @click="handleRowDelete(scope.$index, scope.row);"
                >删除</el-button
              >
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
      goods_id: 0,
      filterForm: {
        name: ""
      },
      tableData: []
    };
  },
  methods: {
    handleRowEdit(index, row) {
      this.$router.push({
        name: "specification_list_add",
        query: { id: this.goods_id }
      });
    },
    handleRowDelete(index, row) {
      this.$confirm("确定要删除?", "提示", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning"
      }).then(() => {
        this.axios
          .post("specification/goodsSpecDelete", { id: row.id })
          .then(response => {
            console.log(response.data);
            if (response.data.errno === 0) {
              this.$message({
                type: "success",
                message: "删除成功!"
              });

              this.getList();
            }
          });
      });
    },
    onSubmitFilter() {
      this.getList();
    },
    getList() {
      this.axios
        .get("specification/infoSpecification", {
          params: {
            id: this.goods_id
          }
        })
        .then(response => {
          console.log("商品规格信息", response.data.data);
          this.tableData = response.data.data;
        });
    }
  },
  components: {},
  mounted() {
    this.goods_id = this.$route.query.id || 0;
    this.getList();
  }
};
</script>

<style scoped>
.spec-img {
  width: 100px;
  height: 100px;
}
</style>
