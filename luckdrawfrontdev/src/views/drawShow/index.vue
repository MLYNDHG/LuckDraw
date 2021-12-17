<template>
  <div class="container">
    <el-row :gutter="10">
      <el-col :xs="4" :sm="4" :md="4" :lg="4" :xl="4"
        ><svg-icon
          v-for="index in 14"
          :key="index"
          iconClass="灯笼 "
          className="denglong"
      /></el-col>
      <el-col :xs="16" :sm="16" :md="16" :lg="16" :xl="16">
        <h1>Welcom to LuckDraw</h1>
        <svg-icon iconClass="畅游花市" className="banner" @click="goToDraw" />
        <!-- <svg-icon iconClass="红包" className="redpack"></svg-icon> -->
      </el-col>
      <el-col :xs="4" :sm="4" :md="4" :lg="4" :xl="4">
        <svg-icon
          v-for="index in 14"
          :key="index"
          iconClass="灯笼 "
          className="denglong"
        />
      </el-col>
    </el-row>
  </div>
</template>

<script>
export default {
  data() {
    return {};
  },
  methods: {
    goToDraw() {
      this.$router.push("/drawPage");
    },
  },
};
</script>

<style lang="less" scoped>
.container {
  // background-image: url(../../../src/assets/year.jpg);
  // background-repeat: no-repeat;
  // background-size: 100% 100%;
  // background-origin: content-box;
  .el-row {
    margin: 0px !important;
    .el-col {
      border-radius: 4px;
    }
  }
  .banner {
    width: 500px !important;
    height: 500px !important;
    cursor: pointer;
  }
  .redpack {
    width: 100px !important;
    height: 100px !important;
  }
  .denglong {
    width: 99px !important;
    height: 99px !important;
  }
}
</style>