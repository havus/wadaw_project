<template>
  <div id="landing-page">
    <div id="hero">
      <v-container>
        <div id="title" class="mb-3">
          <h3>Wadaw Project</h3>
        </div>
        <p>
          Merangkul orang-orang yang bergerak di bidang seni dan
          memberikan wadah bagi mereka untuk menyalurkan karyanya.
        </p>
      </v-container>
    </div>

    <div id="event">
      <v-container>
        <h1 class="text-center text-decoration-underline">Event</h1>
        <v-row dense class="mt-10 mb-12">
          <v-col cols="12">
            <v-card
              color="#2f3246"
              dark
            >
              <v-card-title class="headline">
                Persiapan Hari Pahlawan
              </v-card-title>

              <v-card-subtitle>
                Lomba desain dengan tema "Hari Pahlawan"
                untuk memperkenalkan desainmu kepada semua orang lewat baju kami.
              </v-card-subtitle>

              <v-card-actions>
                <v-btn text to="/event-hari-pahlawan">Detail</v-btn>
              </v-card-actions>
            </v-card>
          </v-col>
        </v-row>
      </v-container>
    </div>
  </div>
</template>

<script>
import '@/assets/stylesheets/landing.scss';

export default {
  name: 'Landing',
  components: {},
};
</script>
