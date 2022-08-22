
<template>
  <div class="text-gray-blue-700">
    <div
      class="flex items-center mb-4 cursor-pointer"
      @click="() => { showChild = !showChild; }"
    >
      <FontAwesomeIcon
        :icon="['fas', 'chevron-right']"
        :class="`mr-3 transition ease-in-out ${showChild ? 'rotate-90' : ''}`"
      />

      <h1 class="text-xl font-semibold mr-2">
        {{ title }}
      </h1>

      <span class="bg-blue-100 text-blue-800 text-xs font-semibold mr-2 px-2.5 py-0.5 rounded-full">
        {{ badgeCounter }}
      </span>

      <div class="flex-1 h-0.5 bg-gray-200 rounded-full" />
    </div>

    <!-- Contents -->
    <transition name="fadeHeight" mode="out-in">
      <div v-if="showChild">
        <slot />
      </div>
    </transition>
  </div>
</template>

<script>
export default {
  name: 'CollapseComponent',
  props: {
    title: {
      type: String,
      required: true,
      default: '',
    },
    badgeCounter: {
      type: [String, Number],
      required: false,
      default: 0,
    },
  },
  data() {
    return {
      showChild: false,
    };
  },
};
</script>

<style scoped>
  .fadeHeight-enter-active,
  .fadeHeight-leave-active {
    transition: all 0.2s;
    max-height: 100vh;
  }

  .fadeHeight-enter,
  .fadeHeight-leave-to {
    opacity: 0;
    max-height: 0px;
  }
</style>
