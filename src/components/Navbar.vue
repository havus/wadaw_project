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
    drawer: false,
    leftMenus: [
      {
        route: '/',
        text: 'Home',
        icon: 'home',
      },
      {
        route: '/popular',
        text: 'Popular Tag',
        icon: 'star',
      },
    ],
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

<style>
  .v-avatar:hover {
    cursor: pointer;
  }

  #navbar {
    z-index: 10;
  }

  #nav-title a {
    text-decoration: none;
    color: white;
  }

  #logo {
    width: 50px;
  }
</style>
