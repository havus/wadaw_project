<template>
  <div id="event-hari-pahlawan">
    <v-container>
      <h1>Event Hari Pahlawan</h1>
      <p id="header">
        Dalam rangka menyambut hari pahlawan, Wadaw Project mengadakan lomba
        desain bertemakan "Hari Pahlawan", desain terbaik akan kami masukan desain
        baju utama wadaw project di batch 2 (November 2020) ini. Ayo buruan ikutan!!
      </p>

      <div id="reward" class="mt-3">
        <h3 class="mt-12 mb-2">Hadiah</h3>

        <div class="list-item" v-for="(reward, index) in rewards" :key='index'>
          <p class="order-number">{{ index + 1 }}.</p>
          <p class="content">{{ reward }}</p>
        </div>
      </div>

      <div id="flow" class="mt-3">
        <h3 class="mt-12 mb-2">Alur Perlombaan</h3>

        <div class="list-item" v-for="(flow, index) in flows" :key='index'>
          <p class="order-number">{{ index + 1 }}.</p>
          <p class="content">{{ flow }}</p>
        </div>
      </div>

      <div id="term" class="mt-3">
        <h3 class="mt-12 mb-2">Syarat dan Ketentuan</h3>

        <div class="list-item" v-for="(term, index) in terms" :key='index'>
          <p class="order-number">{{ index + 1 }}.</p>
          <p class="content">{{ term }}</p>
        </div>
      </div>

      <h2>Semangat Hari Pahlawan teman-teman</h2>
    </v-container>
  </div>
</template>

<script>
import '@/assets/stylesheets/event-hari-pahlawan.scss';

export default {
  name: 'EventHariPahlawan',
  data: () => ({
    rewards: [
      'Uang tunai sebesar 300 ribu rupiah.',
      `Akun instagram peserta yang ditetapkan sebagai pemenang akan kami tag
      di foto mock up baju di akun katalog wadaw.`,
      'Satu buah baju dengan desain peserta yang ditetapkan sebagai pemenang.',
    ],
    flows: [
      `Upload hasil karya melalui Instagram dan tag @wadaw_project,
      proses penilaian akan dilihat dari Tagged Photos of @wadaw_project,
      maka dari itu akun instagramnya jangan diprivate gaes.`,
      'Filosofi desain dari hasil karya akan memberikan nilai tambahan.',
    ],
    terms: [
      `Karya desain logo yang diikutsertakan adalah karya asli peserta,
      bukan tiruan atau jiplakan desain yang sudah ada.`,
      'Karya desain logo belum pernah diikutsertakan pada lomba dan/atau dipublikasikan sebelumnya.',
      'Karya desain logo tidak mengandung unsur pornografi dan isu SARA',
      'Peserta boleh mengirimkan desain lebih dari satu, tidak ada batas maksimal.',
      'Hak Cipta atas karya yang ditetapkan sebagai pemenang lomba menjadi sepenuhnya milik Wadaw Project.',
      'Periode lomba dari SEKARANG sampai Senin, 9 Oktober 2020 jam 12 malam.',
      'Peserta bebas semua usia (TERSERAAAH).',
    ],
  }),
};
</script>
