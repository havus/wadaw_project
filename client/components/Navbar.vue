<!-- Please remove this file from your project -->
<template>
  <header class="bg-gray-blue-50 fixed z-50 w-full">
    <div class="container px-8 lg:px-32 mx-auto flex items-center justify-between flex-wrap py-2">
      <img :src="wadawLogo" class="max-h-9 mr-3 -ml-3" alt="Wadaw logo">

      <div class="block md:hidden">
        <button class="flex items-center px-3 py-2 border rounded border-gray-400 text-gray-400" @click="toggle">
          <FontAwesomeIcon :icon="['fas', 'bars']" />
        </button>
      </div>

      <div :class="open ? 'block': 'hidden'" class="w-full flex-grow md:flex md:items-center md:w-auto">
        <div class="text-sm md:flex-grow">
          <NuxtLink
            v-for="(link, i) in links" :key="i"
            :to="link.path"
            class="font-semibold text-gray-600 no-underline block p-2 pl-0 md:inline-block"
            @click.native="toggle"
          >
            {{ link.text }}
          </NuxtLink>
        </div>
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
      links: [
        { path: '/', text: 'Home' },
        { path: '/projects', text: 'Projects' },
        { path: '/about', text: 'About' },
      ],
    };
  },
  methods: {
    toggle() {
      this.open = !this.open;
    },
  },
};
</script>
