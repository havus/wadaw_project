
<template>
  <NuxtLink
    :to="to" :class="`py-2 px-5 inline-flex items-center rounded text-sm font-semibold focus:outline-none
    text-${currentVariant.textColor}
    bg-${currentVariant.backgroundColor}
    hover:bg-${currentVariant.backgroundColorHover}
    focus:ring focus:ring-${currentVariant.ringColor}`"
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
  },
  data() {
    return {
      variantList: {
        blue: {
          textColor: 'white',
          backgroundColor: 'blue-500',
          backgroundColorHover: 'blue-600',
          ringColor: 'blue-200',
        },
        grey: {
          textColor: 'white',
          backgroundColor: 'gray-700',
          backgroundColorHover: 'gray-800',
          ringColor: 'gray-200',
        },
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
