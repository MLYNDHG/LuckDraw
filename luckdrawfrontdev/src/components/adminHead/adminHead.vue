<template>
  <div class="adminHead">
    <el-row :gutter="20">
      <el-col :span="4"
        ><svg-icon iconClass="波动 " className="choujiang"
      /></el-col>
      <el-col :span="16">Welcome to LuckDraw</el-col>
      <el-col :span="4"
        >
        <svg-icon iconClass="消息 " className="choujiang" /><svg-icon iconClass="娱乐 " className="choujiang" />{{ this.$store.state.user }}<i @click="exit" class="el-icon-switch-button"></i></el-col
      >
    </el-row>
  </div>
</template>

<script>
export default {
  data(){
    return{}
  },
  methods:{
    exit(){
      this.$confirm('确定退出当前账号, 是否继续?', '提示', {
                confirmButtonText: '确定',
                cancelButtonText: '取消',
                type: 'warning'
            }).then(() => {
               sessionStorage.removeItem('userToken');
               sessionStorage.removeItem('user');
               localStorage.removeItem('Authorization');
                this.$router.push("admin");
                this.$message({
                    type: 'success',
                    message: '退出成功!'
                });
            }).catch(() => {
                this.exits = false;
                this.$message({
                    type: 'info',
                    message: '已取消退出'
                });
            });
    }
  }
};
</script>

<style lang="less" scoped>
.adminHead {
  line-height: 60px;
}
.el-icon-switch-button{
  cursor: pointer;
  font-size: 40px;
}
.choujiang {
  width: 50px;
  height: 50px;
}
.el-row,
.el-col {
  margin: 0 !important;
  padding: 0 !important;
}
</style>