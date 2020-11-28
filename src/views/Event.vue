<template>
  <div id="event">
    <v-container>
      <h1>{{ currentEvent.name }}</h1>
      <p id="header">
        {{ currentEvent.header }}
      </p>

      <div id="reward" class="mt-3">
        <h3 class="mt-12 mb-2">Hadiah</h3>

        <div class="list-item" v-for="(reward, index) in currentEvent.rewards" :key='index'>
          <p class="order-number">{{ index + 1 }}.</p>
          <p class="content">{{ reward }}</p>
        </div>
      </div>

      <div id="flow" class="mt-3">
        <h3 class="mt-12 mb-2">Alur Perlombaan</h3>

        <div class="list-item" v-for="(flow, index) in currentEvent.flows" :key='index'>
          <p class="order-number">{{ index + 1 }}.</p>
          <p class="content">{{ flow }}</p>
        </div>
      </div>

      <div id="term" class="mt-3">
        <h3 class="mt-12 mb-2">Syarat dan Ketentuan</h3>

        <div class="list-item" v-for="(term, index) in currentEvent.terms" :key='index'>
          <p class="order-number">{{ index + 1 }}.</p>
          <p class="content">{{ term }}</p>
        </div>
      </div>

      <h2>{{ currentEvent.footer }}</h2>

      <v-btn depressed color="transparent" class="mt-10" to="/events">
        <font-awesome-icon class="mr-2" icon="arrow-left" />
        Back To Events
      </v-btn>
    </v-container>
  </div>
</template>

<script>
import '@/assets/stylesheets/event-hari-pahlawan.scss';

export default {
  name: 'Event',
  computed: {
    currentEvent() {
      return this.events[this.$route.params.eventName];
    },
  },
  data: () => ({
    events: {
      'event-hari-pahlawan': {
        name: 'Event Hari Pahlawan',
        header: `Dalam rangka menyambut hari pahlawan, Wadaw Project mengadakan lomba
          desain bertemakan "Hari Pahlawan",  desain terbaik akan kami masukan desain
          baju utama wadaw project di batch 2 (November 2020) ini. Ayo buruan ikutan!!`,
        footer: 'Semangat Hari Pahlawan teman-teman',
        rewards: [
          'Uang tunai sebesar 500 ribu rupiah.',
          `Akun instagram peserta yang ditetapkan sebagai pemenang akan kami tag
          di foto mock up baju di akun katalog wadaw.`,
          'Satu buah baju dengan desain peserta yang ditetapkan sebagai pemenang.',
          'Akun Instagram akan dicantumkan di greeting card setiap penjualanan dengan desainnya',
        ],
        flows: [
          `Upload hasil karya melalui Instagram, tag @wadaw_project dan pakai hastag #wadawharipahlawan,
          proses penilaian akan dilihat dari Tagged Photos of @wadaw_project,
          maka dari itu akun instagramnya jangan diprivate gaes.`,
          'Kirimkan hasil karya ke email kami wadaw.project.id@gmail.com',
        ],
        terms: [
          `Karya desain logo yang diikutsertakan adalah karya asli peserta,
          bukan tiruan atau jiplakan desain yang sudah ada.`,
          'Karya desain logo belum pernah diikutsertakan pada lomba dan/atau dipublikasikan sebelumnya.',
          'Karya desain logo tidak mengandung unsur pornografi dan isu SARA',
          'Peserta boleh mengirimkan desain lebih dari satu, tidak ada batas maksimal.',
          'Filosofi desain dari hasil karya akan memberikan nilai tambahan.',
          'Mock up baju dengan desain yang telah dibuat akan memberikan nilai tambahan.',
          'Hak Cipta atas karya yang ditetapkan sebagai pemenang lomba menjadi sepenuhnya milik Wadaw Project.',
          'Periode lomba dari SEKARANG sampai Jum\'at, 16 Oktober 2020 jam 12 malam.',
          'Peserta bebas semua usia (TERSERAAAH).',
        ],
      },
    },
  }),
};
</script>
