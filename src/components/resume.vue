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
          <span class="img-text--text"><a href="https://github.com/weineel">Github</a></span>
        </div>
        <div class="img-text">
          <img class="img-text--img small" src="../assets/jianshu.png" alt="">
          <span class="img-text--text"><a href="https://www.jianshu.com/u/198d870bc6fd">简书</a></span>
        </div>
        <div class="img-text">
          <img class="img-text--img small" src="../assets/blog.png" alt="">
          <span class="img-text--text"><a href="https://sprint.weineel.top">个人博客</a></span>
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
            <li>能专心致志做一件事</li>
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
            住&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址：江苏苏州虎丘区
          </div>
          <div>
            出生年月：1992.06	
          </div>
          <div>
            身&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;高：170cm
          </div>
          <div>
            毕业院校	：南京理工大学泰州科技学院
          </div>
          <div>
            学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;历	：本科
            </div>
        </div>
      </div>

      <div class="divider"></div>

       <div class="basic--critical">
        <div class="img-text">
          <img class="img-text--img" src="../assets/critical.png" alt="">
          <span class="img-text--text bold">个人评价</span>
        </div>
        <div class="content font-m">
          对技术有着浓厚的兴趣和热情，喜欢专研新技术新框架和各种开发语言，乐于参与开源社区。
        </div>
      </div>
    </div>
    <div class="ext">
      <div class="block">
        <div class="block--header">
          <img src="../assets/work-exp.png" alt="">
          <span>工作经历</span>
        </div>
        <div class="block--body">
          <template v-for="(workExp, index) in workExps">
            <div :key="`company-${index}`" class="block--item">
              <div class="block--item-left">
                <div class="font-l-bold">{{ workExp.timeRange }}</div>
              </div>
              <div class="block--item-right">
                <div class="font-l-bold">{{ workExp.companyName }}</div>
              </div>
            </div>
            <div v-for="(project, idx) in workExp.projects" :key="`proj-${index}-${idx}`" class="block--item minor">
              <div class="block--item-left">
                <div class="font-m-bold">{{ project.timeRange }}</div>
              </div>
              <div class="block--item-right">
                <div class="font-m">{{ project.duty }}</div>
              </div>
            </div>
          </template>
        </div>
      </div>
      <div class="block">
        <div class="block--header">
          <img src="../assets/work-exp.png" alt="">
          <span>专业技能</span>
        </div>
        <div class="font-m">在项目中学习，学习应用于项目</div>
        <div class="block--body">
          <template v-for="(skill, index) in skills">
            <div :key="`skill-${index}`" class="block--item">
              <div class="font-l-bold">{{ skill.type }}</div>
            </div>
            <div :key="`skill-items-${index}`" class="block--item minor">
              {{ skill.items.join(', ') }}
            </div>
          </template>
        </div>
      </div>
      <div class="block">
        <div class="block--header">
          <img src="../assets/edu-exp.png" alt="">
          <span>教育经历</span>
        </div>
        <div class="block--body">
          <template v-for="(eduExp, index) in eduExps">
            <div :key="`edu-${index}`" class="block--item">
              <div class="block--item-left" style="width: auto; margin-right: 10px;">
                <div class="font-l-bold">{{ '2012.07 ~ 2016.06' }}</div>
              </div>
              <div class="block--item-right">
                <div class="font-l-bold">{{ '南京理工大学泰州科技学院' }}</div>
                <div class="font-l-bold">{{ '计算机科学与技术(本科)' }}</div>
              </div>
            </div>
            <div :key="`grade-${index}`" class="font-m-bold"> 在校成绩 </div>
            <div v-for="(grade, idx) in eduExp.grades" :key="`grade-${index}-${idx}`" class="block--item font-m minor">
              {{ grade.name }}
            </div>
            <div :key="`position-${index}`" class="font-m-bold"> 在校职位 </div>
            <div v-for="(position, idx) in eduExp.positions" :key="`position-${index}-${idx}`" class="block--item font-m minor">
              {{ position.name }}
            </div>
          </template>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Resume',

  data() {
    return {
      workExps: [{
        timeRange: '2015-06至今',
        companyName: '苏州盈天地资讯科技',
        projects: [{
          timeRange: '15-06 ~ 16-03',
          duty: 'iOS和Java工程师(实习)，江苏人才网、交通银行的微信前段及对应接口，进步本(nodejs练手)'
        }, {
          timeRange: '16-03 ~ 16-07',
          duty: '东方雨虹项目的iOS端开发，期间的5月份结束实习。'
        }, {
          timeRange: '16-07 ~ 16-09',
          duty: '东方雨虹客户网站JavaWeb后端。'
        }, {
          timeRange: '16-09 ~ 17-01',
          duty: '独立构建全新的iOS开发框架及自动化上架流程，完成伊顿教育iOS端的开发。'
        }, {
          timeRange: '17-01 ~ 17-03',
          duty: '天弓专利数据可视化，使用docker作为开发环境。'
        }, {
          timeRange: '17-03 ~ 17-04',
          duty: '移动端数据报表demo，使用微信小程序开发，在公司内部组织分享。'
        }, {
          timeRange: '17-04 ~ 17-05',
          duty: '公司部分自有产品的docker化(实验阶段)，学习了docker 的基本使用。'
        }, {
          timeRange: '17-05 ~ 17-08',
          duty: '信汇通项目(爬取各类政策)、采＋项目(爬取政府招标信息)。使用Python爬虫技术，使用docker部署爬虫。'
        }, {
          timeRange: '17-09',
          duty: '完成采＋项目微信端，使用vuejs前端框架。'
        }, {
          timeRange: '17-10 ~ 17-12',
          duty: '太湖金谷金融小镇项目，担任技术经理，带领5人的开发团队。'
        }, {
          timeRange: '17-11 ~ 18-01',
          duty: '利用周末时间，参加了江苏省经信委主办，江苏软件产业人才发展基金会承办的架构师培训，并获得结业证书。'
        }, {
          timeRange: '18-01 ~ 18-02',
          duty: '西交利物浦大学校友网微信前端架构搭建和开发。'
        }, {
          timeRange: '18-02至今',
          duty: '小微项目，微信小程序原型和开发以及Java后端接口。'
        }]
      }],
      eduExps: [{
        timeRange: '',
        schoolName: '南京理工大学泰州科技学院',
        major: '计算机科学与技术(本科)',
        grades: [{
          name: '多次获得奖学金。'
        }, {
          name: '在计算机软件水平考试中获得数据库系统工程师和网络工程师资格。'
        }, {
          name: '第八届全国信息技术应用大赛国家二等奖。'
        }, {
          name: '第五届蓝桥杯C语言组省三等奖、第六届蓝桥杯Java组省二等奖。'
        }],
        positions: [{
          name: '计算机协会会长'
        }, {
          name: '计算机系学生会副主席'
        }, {
          name: '青年志愿者协会计算机系负责人'
        }]
      }],
      skills: [{
        type: '开发语言',
        items: [
          'OC(熟练)',
          'java(熟练)',
          'js(熟练)',
          'Python(掌握)',
          'C/C++(熟悉)'
        ]
      }, {
        type: 'iOS开发框架/工具',
        items: [
          'ReactiveCocoa',
          'Weex(了解) ',
          'ReactNative(了解)',
          'fastfane',
          'cocoapods'
        ]
      }, {
        type: 'Web前端框架/工具',
        items: [
          'Vuejs',
          'webpack等nodejs相关工具包'
        ]
      }, {
        type: 'Java后端框架/工具',
        items: [
          'maven',
          'String Boot',
          'SpringMVC',
          'Mybatis',
        ]
      }, {
        type: 'Devops(了解)',
        items: [
          'Docker',
          'Jenkins',
          'TeamCity',
          'Travis',
        ]
      }]
    }
  }
}
</script>

<style>
.resume {
  display: flex;
  width: 800px;
  border: 1px solid #E8E8E8;
  padding-right: 20px;
  box-sizing: border-box;
}
.basic {
  display: flex;
  flex-direction: column;
  width: 35%;
  padding: 20px 30px;
  background-color: #E8E8E8;
  box-sizing: border-box;
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
.basic--information .content {
  padding-left: 20px;
  white-space: normal;
}
.basic--information .content > div {
  margin: 5px 0;
}
.basic--critical .content {
  padding-left: 20px;
}
.ext {
  width: 65%;
  box-sizing: border-box;
  padding: 30px 0px 50px 30px;
}
.block {
  width: 100%;
}
.block--header {
  display: flex;
  width: 100%;
  justify-content: flex-start;
  align-items: center;
  margin: 20px 0;
}
.block--header img {
  width: 40px;
  height: 40px;
  margin-right: 20px;
}
.block--header span {
  font-size: 20px;
  font-family: PingFangSC-Semibold;
}
.block--body {
  width: 100%;
}
.block--item {
  display: flex;
  margin: 10px 0;
  flex-shrink: 0;
}
.block--item.minor {
  padding-left: 10px;
}
.block--item-left,
.block--item-right {
  /* width: 50%; */
  box-sizing: border-box;
  padding-right: 5px;
}
.block--item-left {
  width: 110px;
  flex-shrink: 0;
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
