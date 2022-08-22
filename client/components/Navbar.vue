<!-- Please remove this file from your project -->
<template>
  <header class="bg-gray-blue-900 py-2 fixed z-50 w-full">
    <div class="container mx-auto flex items-center justify-between flex-wrap">
      <img :src="wadawLogo" class="max-h-9 mr-9" alt="Wadaw logo">

      <div class="block md:hidden">
        <button class="flex items-center px-3 py-2 border rounded border-gray-400 text-gray-400" @click="toggle">
          <FontAwesomeIcon :icon="['fas', 'bars']" />
        </button>
      </div>

      <div :class="open ? 'block': 'hidden'" class="w-full flex-grow md:flex md:items-center md:w-auto">
        <div class="text-sm md:flex-grow first:mt-3 md:first:mt-0">
          <NuxtLink
            v-for="(link, i) in links" :key="i"
            :to="link.path"
            :class="`text-gray-100 tracking-wider no-underline block p-2 pl-0 pr-9 md:inline-block
            ${link.path == $nuxt.$route.path ? 'font-bold' : ''}`"
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
