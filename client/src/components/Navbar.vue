<template>
  <div id="navbar">
    <!-- 4580E6 -->
    <v-app-bar absolute color="transparent" flat dark>
      <div id="logo" class="ml-10 mr-3">
        <v-img :src="require('./../assets/images/logo-white.png')"/>
      </div>
      <v-toolbar-title id="nav-title">
        <a href="https://wadaw.id">Wadaw</a>
      </v-toolbar-title>

      <v-spacer></v-spacer>
    </v-app-bar>
  </div>
</template>

<script>
export default {
  data: () => ({
    isLogin: false,
  }),
  methods: {
    logout() {},
  },
  watch: {
    $route() {
      if (localStorage.getItem('token')) {
        this.isLogin = true;
      } else {
        this.isLogin = false;
      }
    },
  },
};
</script>

<style lang="scss">
  .v-avatar:hover {
    cursor: pointer;
  }

  #navbar {
    z-index: 10;

    #nav-title a {
      font-family: 'Montserrat', -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto',
      'Oxygen', 'Ubuntu', 'Cantarell', 'Fira Sans', 'Droid Sans', 'Helvetica Neue',
      sans-serif;

      text-decoration: none;
      color: white;
      letter-spacing: 1px;
    }

    #logo {
      width: 50px;
    }
  }
</style>
