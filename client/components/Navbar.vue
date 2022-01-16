<!-- Please remove this file from your project -->
<template>
  <header class="fixed z-50 w-full flex items-center justify-between flex-wrap bg-gray-blue-50 py-4 px-8 lg:px-32">
    <img :src="wadawLogo" class="max-h-10 mr-3 lg:-ml-4" alt="Wadaw logo">

    <div class="block md:hidden">
      <button class="flex items-center px-3 py-2 border rounded border-gray-400 text-gray-400" @click="toggle">
        <FontAwesomeIcon :icon="['fas', 'bars']" />
      </button>
    </div>
    <div :class="open ? 'block': 'hidden'" class="w-full flex-grow md:flex md:items-center md:w-auto">
      <div class="text-sm md:flex-grow">
        <NuxtLink class="font-semibold text-gray-600 no-underline block p-2 pl-0 md:inline-block" to="/">
          Home
        </NuxtLink>
        <NuxtLink class="font-semibold text-gray-600 no-underline block p-2 pl-0 md:inline-block" to="/projects">
          Projects
        </NuxtLink>
        <NuxtLink class="font-semibold text-gray-600 no-underline block p-2 pl-0 md:inline-block" to="/about">
          About
        </NuxtLink>
      </div>
    </div>
  </header>
</template>

<script>
import wadawLogo from '@/assets/images/wadaw-logo.png';

export default {
  name: 'NavBar',
  data() {
    return {
      wadawLogo,
      open: false,
    };
  },
  methods: {
    toggle() {
      this.open = !this.open;
    },
  },
};
</script>
