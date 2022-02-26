<template>
  <div id="error-page" class="flex flex-col justify-center items-center py-32">
    <div class="container">
      <div
        v-if="error.statusCode === 404"
        class="w-100 flex flex-col justify-center items-center lg:flex-row"
      >
        <div class="max-w-xs flex flex-col">
          <img :src="robot404" alt="404 Robot">
          <a class="text-xs text-center lg:text-left" href="https://www.freepik.com/vectors/web">Web vector created by storyset - www.freepik.com</a>
        </div>

        <div class="py-7 my-auto max-w-lg">
          <div class="p-5 lg:border-l-2 lg:border-gray-300 text-center lg:text-left">
            <h1 class="text-4xl font-bold text-gray-600">
              Sorry, this page isn't available!
            </h1>

            <Button
              class="mt-5" to="/" variant="gray"
              rounded
            >
              Home page
              <span class="ml-2">
                <FontAwesomeIcon :icon="['fas', 'arrow-circle-right']" />
              </span>
            </Button>
          </div>
        </div>
      </div>

      <!-- TODO: -->
      <div v-else>
        <h1 class="title is-1 has-text-danger">
          An error occurred
        </h1>
      </div>
    </div>
  </div>
</template>

<script>
import robot404 from '@/assets/images/404-robot.png';

export default {
  name: 'ErrorPage',
  layout: 'error', // you can set a custom layout for the error page
  props: {
    error: {
      type: Object,
      required: true,
    },
  },
  data() {
    return {
      robot404,
    };
  },
};
</script>

<style>

</style>
