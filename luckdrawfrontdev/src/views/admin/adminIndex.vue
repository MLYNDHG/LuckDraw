<template>
  <div class="container">
    <!-- 后台管理员页面 -->
    <el-container class="layout-container">
      <el-header>
        <!-- head -->
        <admin-head></admin-head>
      </el-header>
      <el-container class="layout-container">
        <el-aside width="200px">
          <!-- aside -->
          <el-menu
            unique-opened
            router
            default-active="0"
            class="el-menu-vertical-demo"
            @open="handleOpen"
            @close="handleClose"
          >
            <el-menu-item index="/containerIndex">
              <i class="el-icon-menu"></i>
              <span slot="title"
                >首&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;页</span
              >
            </el-menu-item>
            <el-submenu index="2">
              <template slot="title">
                <i class="el-icon-location"></i>
                <span>奖品管理</span>
              </template>
              <el-menu-item index="/stuffInfoList">奖品列表</el-menu-item>
              <el-menu-item index="1-1">新增</el-menu-item>
              <el-menu-item index="1-2">编辑</el-menu-item>
              <el-menu-item index="1-3">详情</el-menu-item>
            </el-submenu>
            <el-menu-item index="/stuffInfoList">
              <i class="el-icon-menu"></i>
              <span slot="title">人员管理</span>
            </el-menu-item>
            <el-menu-item index="3">
              <i class="el-icon-document"></i>
              <span slot="title">奖项管理</span>
            </el-menu-item>
            <el-menu-item index="4">
              <i class="el-icon-setting"></i>
              <span slot="title">获奖管理</span>
            </el-menu-item>
            <el-menu-item index="5">
              <i class="el-icon-setting"></i>
              <span slot="title">主题设置</span>
            </el-menu-item>
          </el-menu>
        </el-aside>
        <el-container>
          <!-- main -->
          <el-main>
            <!-- tabs+view -->
            <el-tabs
              v-model="activeName"
              @tab-remove="tabRemove"
              @tab-click="handleClick"
              closable
            >
              <el-tab-pane label="首页" name="index"></el-tab-pane>
              <el-tab-pane label="用户管理" name="first"></el-tab-pane>
              <el-tab-pane label="配置管理" name="second"></el-tab-pane>
              <el-tab-pane label="角色管理" name="third"></el-tab-pane>
              <el-tab-pane label="定时任务补偿" name="fourth"></el-tab-pane>
              <router-view></router-view>
            </el-tabs>
          </el-main>
        </el-container>
      </el-container>
    </el-container>
  </div>
</template>

<script>
export default {
  data() {
    return {
      activeName: "index",
    };
  },
  methods: {
    handleOpen(key, keyPath) {
      console.log(key, keyPath);
    },
    handleClose(key, keyPath) {
      console.log(key, keyPath);
    },
    handleClick(tab, event) {
      console.log(tab, event);
    },
    tabRemove(name) {
      console.log(name);
    },
  },
};
</script>

<style lang="less" scoped>
.container {
  width: 100%;
  height: 100%;
}
.layout-container {
  height: 100%;
}
.el-header {
  background-color: #91c1ff;
  color: #333;
  text-align: center;
  height: 100%;
  padding: 0px !important;
}

.el-aside {
  background-color: #cecece;
  color: #333;
  text-align: center;
  height: 100%;
}

.el-main {
  color: #333;
  text-align: center;
  line-height: 100%;
}
</style>