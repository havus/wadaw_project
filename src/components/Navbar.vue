<template>
  <div id="navbar">
    <!-- 4580E6 -->
    <v-app-bar absolute color="transparent" flat dense dark>
      <v-toolbar-title class="ml-10" id="nav-title">
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
</style>
