<template>
  <div id="events">
    <v-container>
      <h1>Event List</h1>

      <div class="card-wrapper">
        <div class="card" @click="goEventPage('event-hari-pahlawan')">
          <div class="period">
            <div class="start">1 Oktober 2020</div>
            <div class="line"/>
            <div class="end">16 Oktober 2020</div>
          </div>

          <div class="content">
            <h3>Persiapan Hari Pahlawan</h3>

            <div class="simple-info">
              <font-awesome-icon icon="map-marker-alt" class="mr-2" color="grey"/>
              <p class="mb-0 mr-5">Balikpapan</p>

              <font-awesome-icon icon="award" class="mx-2" color="grey"/>
              <p class="mb-0">IDR 500.000,00</p>
            </div>
          </div>

          <div class="cost">
            <v-chip
              color="green"
              outlined
              label
            >
              Free
            </v-chip>
          </div>
        </div>
      </div>
    </v-container>
  </div>
</template>

<script>
import '@/assets/stylesheets/events.scss';

export default {
  name: 'Events',
  methods: {
    goEventPage(eventName) {
      this.$router.push(`event/${eventName}`);
    },
  },
};
</script>
