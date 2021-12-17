<template>
  <div class="container">
    <el-row :gutter="10">
      <el-col :xs="4" :sm="4" :md="4" :lg="4" :xl="4"
        ><div class="grid-content bg-purple"></div
      ></el-col>
      <el-col :xs="16" :sm="16" :md="16" :lg="16" :xl="16"
        ><div class="grid-content bg-purple-light">
          <svg-icon
            iconClass="夺宝抽奖"
            className="banner"
            @click="goToDraw"
          /></div
      ></el-col>
      <el-col :xs="4" :sm="4" :md="4" :lg="4" :xl="4"
        ><div class="grid-content bg-purple-light"></div
      ></el-col>
    </el-row>
  </div>
</template>

<script>
export default {};
</script>

<style lang="less" scoped>
.container {
  .el-row {
    margin: 0px !important;
    .el-col {
      border-radius: 4px;
    }
    .bg-purple-dark {
      background: #99a9bf;
    }
    .bg-purple {
      background: #d3dce6;
    }
    .bg-purple-light {
      background: #e5e9f2;
    }
    .grid-content {
      border-radius: 4px;
      min-height: 700px;
    }
    .banner {
      width: 600px !important;
      height: 600px !important;
      cursor: pointer;
    }
  }
}
</style>