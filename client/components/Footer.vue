<template>
  <footer
    class="flex flex-col justify-center items-center bg-gray-700 text-gray-300 font-light text-sm
    p-6 absolute w-full bottom-0 left-0"
  >
    <span class="mb-1">
      &copy;
      <a href="https://instagram.com/wadaw_project" target="blank" class="font-semibold border-b border-dotted">Wadaw Project</a>
      Landing Page 2020
    </span>
    <span>
      Made with <FontAwesomeIcon :icon="['fas', 'heart']" color="#FB7373" /> in Balikpapan
    </span>
  </footer>
</template>

<script>
export default {
  name: 'FooterComponent',
};
</script>
