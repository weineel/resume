<template>
  <div id="app">
    <resume class="resume"/>
  </div>
</template>

<script>
import Resume from './components/resume'

export default {
  name: 'App',
  components: {
    Resume
  }
}
</script>

<style>
.resume {
  margin: 0 auto;
}
</style>
