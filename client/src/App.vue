<template>
  <v-app>
    <Navbar v-if="isVisibleNavbar"/>
    <v-main>
      <router-view></router-view>
    </v-main>
    <Footer v-if="isVisibleFooter"/>
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
  computed: {
    isVisibleNavbar() {
      return this.$route.name !== 'Landing' && this.$route.name !== 'Shop';
    },
    isVisibleFooter() {
      return true;
    },
  },
};
</script>

<style lang="scss">
  * {
    font-family: 'Montserrat', -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto',
      'Oxygen', 'Ubuntu', 'Cantarell', 'Fira Sans', 'Droid Sans', 'Helvetica Neue',
      sans-serif;
  }

  #landing, #events, #event, #shop {
    background: linear-gradient(
      rgba(45, 46, 56, 0.8),
      rgba(45, 46, 56, 0.8),
    ), url(./assets/images/batik_2.jpg);
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    height: 100%;
    width: 100%;
  }
</style>
