
<template>
  <NuxtLink
    :to="to"
    :class="`py-2 px-5 inline-flex items-center rounded text-sm font-semibold focus:outline-none focus:ring
    ${currentVariant} ${rounded && 'rounded-full'}`"
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
    variant: {
      type: String,
      required: false,
      default: 'blue',
    },
    rounded: Boolean,
  },
  data() {
    return {
      variantList: {
        blue: 'text-white bg-blue-500 hover:bg-blue-600 focus:ring-blue-200',
        gray: 'text-white bg-gray-700 hover:bg-gray-800 focus:ring-gray-200',
      },
    };
  },
  computed: {
    currentVariant() {
      return this.variantList[this.variant] || this.variantList.blue;
    },
  },
};
</script>

<style>

</style>
