<template>
  <v-app>
    <Navbar v-if="isVisible"/>
    <v-main>
      <router-view></router-view>
    </v-main>
    <Footer v-if="isVisible"/>
  </v-app>
</template>

<script>
import Navbar from '@/components/Navbar.vue';
import Footer from '@/components/Footer.vue';

export default {
  name: 'App',
  components: {
    Navbar, Footer,
  },
  data: () => ({
    //
  }),
  computed: {
    isVisible() {
      return !this.$route.path.includes('home');
    },
  },
};
</script>

<style scoped>
  * {
    font-family: 'Montserrat', -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto', 'Oxygen',
    'Ubuntu', 'Cantarell', 'Fira Sans', 'Droid Sans', 'Helvetica Neue',
    sans-serif;
  }
</style>
