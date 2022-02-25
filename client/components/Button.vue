
<template>
  <NuxtLink
    :to="to" class="py-2 px-5 inline-flex items-center rounded text-sm font-semibold
    text-white bg-gray-700 hover:bg-gray-800 focus:outline-none focus:ring focus:ring-gray-200"
  >
    <slot />
  </NuxtLink>
</template>

<script>
export default {
  name: 'ButtonComponent',
  props: {
    to: {
      type: String,
      required: false,
      default: '#',
    },
  },
};
</script>

<style>

</style>
