<template>
  <div class="resume">
    <div class="basic font-m color-normal">
      <div class="basic--persional">
        <div class="header">
          <div class="avatar">
            <img src="../assets/avatar.png" alt="">
          </div>
          <span class="name font-xl-bold">李聚丰(weineel)</span>
          <span class="position font-m-bold color-blue">研发工程师</span>
        </div>
        <div class="img-text">
          <img class="img-text--img small" src="../assets/phone.png" alt="">
          <span class="img-text--text">17625354869</span>
        </div>
        <div class="img-text">
          <img class="img-text--img small" src="../assets/e-mail.png" alt="">
          <span class="img-text--text">LiJF_wn@163.com</span>
        </div>
        <div class="img-text">
          <img class="img-text--img small" src="../assets/github.png" alt="">
          <span class="img-text--text"><a href="https://github.com/weineel">github.com/weineel</a></span>
        </div>
        <div class="img-text">
          <img class="img-text--img small" src="../assets/jianshu.png" alt="">
          <span class="img-text--text"><a href="https://www.jianshu.com/u/198d870bc6fd">www.jianshu.com/u/198d870bc6fd</a></span>
        </div>
        <div class="img-text">
          <img class="img-text--img small" src="../assets/blog.png" alt="">
          <span class="img-text--text"><a href="https://sprint.weineel.top">sprint.weineel.top</a></span>
        </div>
      </div>

      <div class="divider"></div>

      <div class="basic--intent">
        <div class="img-text">
          <img class="img-text--img" src="../assets/intent.png" alt="">
          <span class="img-text--text bold">求职意向</span>
        </div>
        <div class="content">
          <span>我想要加入一个： </span>
          <ul>
            <li>热爱前沿技术</li>
            <li>重视代码规范</li>
            <li>充满活力</li>
            <li>务实，不画大饼</li>
          </ul>
          <span>的团队</span>
        </div>
      </div>

      <div class="divider"></div>

      <div class="basic--information">
        <div class="img-text">
          <img class="img-text--img" src="../assets/information.png" alt="">
          <span class="img-text--text bold">个人信息</span>
        </div>
        <div class="content">
          <div>
            住    址：江苏苏州虎丘区
          </div>
          <div>
            出生年月：1992.06	
          </div>
          <div>
            身    高：170cm
          </div>
          <div>
            毕业院校	：南京理工大学泰州科技学院
          </div>
          <div>
            学    历	：本科
            </div>
        </div>
      </div>
    </div>
    <div class="ext"></div>
  </div>
</template>

<script>
export default {
  name: 'Resume'
}
</script>

<style>
.resume {
  display: flex;
  width: 656px;
}
.basic {
  display: flex;
  flex-direction: column;
  width: 40%;
  padding: 20px 30px;
  background-color: #E8E8E8;
}
.basic--persional {
  margin-top: 25px;
  /* padding: 20px 20px; */
}
.basic--persional .header {
  display: flex;
  flex-direction: column;
  align-items: center;
}
.basic--persional .avatar {
  display: flex;
  align-items: center;
  justify-content: center;
  width: 100px;
  height: 100px;
  border: 1px black solid;
  border-radius: 50%;
  margin: 0 auto;
  
}
.basic--persional .avatar img {
  width: 80px;
  height: 80px;
  border-radius: 50%;
}
.basic--persional .name {
  margin: 10px 0;
}
.basic--persional .position {
  margin-bottom: 30px;
}
.basic--intent .content span {
  padding-left: 20px;
}
.ext {
  width: 60%;
}

.divider {
  width: 100%;
  height: 1px;
  background-color: #C3C3C3;
  margin: 20px 0;
}

/* 图文 */
.img-text {
  display: flex;
  align-items: center;
  padding: 5px;
}
.img-text--img {
  width: 30px;
  height: 30px;
  margin-right: 15px;
}
.img-text--img.small {
  width: 20px;
  height: 20px;
}
.img-text--text {
  font-family: PingFangSC;
  font-size: 14px;
}
.img-text--text.bold {
  font-family: PingFangSC-Semibold;
  font-size: 16px;
}

/* font */
.font-s,
.font-m,
.font-l,
.font-xl,
.font-xxl {
  font-family: PingFangSC;
}
.font-s-bold,
.font-m-bold,
.font-l-bold,
.font-xl-bold,
.font-xxl-bold {
  font-family: PingFangSC-Semibold;
}
.font-s,
.font-s-bold {
  font-size: 12px;
}
.font-m,
.font-m-bold {
  font-size: 14px;
}
.font-l,
.font-l-bold {
  font-size: 16px;
}
.font-xl,
.font-xl-bold {
  font-size: 18px;
}
.font-xxl,
.font-xxl-bold {
  font-size: 20px;
}
/* color */
.color-blue {
  color: #3F6BEE;
}
.color-normal {
  color: #1B1A18;
}
.color-grey {
  color: #727171;
}
</style>
