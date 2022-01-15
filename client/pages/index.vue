<template>
  <div>
    <div class="bg-gray-blue-50 min-h-96 p-32 flex flex-wrap justify-between">
      <div class="text-gray-600 max-w-112 h-full my-auto">
        <h1 class="text-4xl mb-5 font-semibold bg-test-50">Wadaw Project</h1>
        <p class="font-extralight">
          Merangkul orang-orang di segala bidang dengan memberikan wadah bagi mereka untuk menyalurkan idenya.
          Membantu merealisasikan ide tanpa mengambil hak cipta.
        </p>
      </div>

      <img :src="wadawLChipset" class="max-h-80 lg:mr-32" alt="Wadaw chipset">
    </div>
  </div>
</template>

<script>
import wadawLChipset from '@/assets/images/wadaw-chipset.png';

export default {
  name: 'IndexPage',
  data() {
    return {
      wadawLChipset,
    };
  },
};
</script>
