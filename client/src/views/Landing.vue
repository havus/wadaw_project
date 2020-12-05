<template>
  <div id="landing">
    <v-container>
      <div class="logo-wrapper">
        <div class="logo">
          <v-img :src="require('./../assets/images/logo-white.png')"/>
        </div>
      </div>

      <div class="content-wrapper">
        <div class="content">
          <h1>WADAW</h1>
          <p>
            Merangkul orang-orang yang bergerak di bidang seni
            dan memberikan wadah bagi mereka untuk menyalurkan karyanya.
          </p>
        </div>
      </div>

      <div class="navigation-menu">
        <v-btn to="/events">Events</v-btn>
        <v-btn to="/shop">Shop</v-btn>
        <v-btn>About</v-btn>
        <v-btn>Contact</v-btn>
      </div>
    </v-container>
  </div>
</template>

<script>
import '@/assets/stylesheets/landing.scss';

export default {
  name: 'Landing',
};
</script>
