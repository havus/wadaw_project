<template>
  <div class="text-gray-600">
    <div class="bg-gray-blue-50 min-h-96 p-32 flex flex-wrap justify-between">
      <div class="max-w-112 h-full my-auto">
        <h1 class="text-4xl mb-5 font-semibold bg-test-50">Wadaw Project</h1>
        <p class="font-light">
          Embracing people in all fields by providing a platform for them to make their ideas happen.
          Help realize ideas without take their copyright.
        </p>
      </div>

      <img :src="wadawLChipset" class="max-h-80 lg:mr-32" alt="Wadaw chipset">
    </div>

    <div class="bg-white py-20 container mx-auto">
      <h2 class="text-3xl text-center font-semibold bg-test-50 mb-20">Gain More Experience with Us</h2>

      <div class="grid grid-cols-1 lg:grid-cols-3 gap-1 lg:px-28">
        <div
          v-for="(experience, i) in experiences" :key="i"
          class="flex py-3 px-5"
        >
          <div class="w-20 text-5xl text-yellow-500 text-right mr-7 flex items-center">
            <FontAwesomeIcon :icon="experience.icon" />
          </div>

          <div>
            <h3 class="text-2xl mb-3">{{ experience.title }}</h3>
            <p class="font-light">{{ experience.text }}</p>
          </div>
        </div>
      </div>
    </div>

    <div class="bg-gray-blue-50 py-20">
      <div class="container mx-auto grid grid-cols-1 lg:grid-cols-3 gap-1 lg:px-28">
        <div class="bg-white px-6 py-10 rounded-md relative filter drop-shadow-lg">
          <div class="bg-green-300 rounded-full h-10 w-10
            flex items-center justify-center text-white
            absolute -top-6 left-1/2 transform -translate-x-1/2"
          >
            <FontAwesomeIcon :icon="['fas', 'quote-right']" />
          </div>

          <p class="text-xl italic text-center text-gray-500 font-light">Creativity is intelligence having fun.</p>
        </div>
      </div>
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
      experiences: [
        {
          icon: ['far', 'lightbulb'],
          title: 'Start Your Idea',
          text: "It's never too late to start something. Here we are.",
        },
        {
          icon: ['fas', 'users'],
          title: 'Open Discuss',
          text: 'Criticizing idea and gather creative problem solving.',
        },
        {
          icon: ['fas', 'cogs'],
          title: 'Execute The Plan',
          text: "Is an easy concept to talk about, but it's a hard one to well... Execute!",
        },
      ],
    };
  },
};
</script>
