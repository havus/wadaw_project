<template>
  <div class="text-gray-600">
    <div class="bg-gray-blue-50 min-h-96 p-12 lg:p-32 flex flex-wrap flex-col items-center lg:flex-row justify-center lg:justify-between">
      <div class="max-w-112 h-full mt-12 lg:my-auto order-last lg:order-first">
        <h1 class="text-4xl mb-5 font-semibold bg-test-50">
          Wadaw Project
        </h1>
        <p class="font-light">
          Embracing people in all fields by providing a platform for them to make their ideas happen.
          Help realize ideas without take their copyright.
        </p>
      </div>

      <img :src="wadawChipset" class="mt-10 lg:mt-0 max-h-60 lg:max-h-80 xl:mr-32" alt="Wadaw chipset">
    </div>

    <!-- Gain More Experience with Us -->
    <div class="bg-white container mx-auto px-5">
      <h2 class="text-3xl text-center font-semibold bg-test-50 my-12">
        Gain More Experience with Us
      </h2>

      <div class="lg:px-28 flex flex-wrap justify-center lg:justify-start">
        <div
          v-for="(experience, i) in experiences" :key="i"
          class="lg:w-1/2 xl:w-1/3 lg:mx-auto my-5 lg:my-3"
        >
          <div class="w-full">
            <div class="p-5">
              <div class="flex flex-col items-center lg:items-start">
                <div class="w-16 h-16 border rounded-full border-yellow-500 flex justify-center items-center">
                  <div class="text-3xl text-yellow-500">
                    <FontAwesomeIcon :icon="experience.icon" />
                  </div>
                </div>

                <h3 class="text-2xl mt-3 mb-2">
                  {{ experience.title }}
                </h3>
              </div>

              <p class="font-light text-center lg:text-left">
                {{ experience.text }}
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="container mx-auto flex justify-center">
      <div class="w-112 h-0.5 bg-gradient-to-r from-white via-gray-200 to-white my-20" />
    </div>

    <div class="bg-gray-blue-50 bg-gradient-to-b from-white pt-5">
      <div class="container mx-auto lg:px-28 flex flex-wrap">
        <div
          v-for="(quote, i) in quotes" :key="i"
          class="p-14 pt-0 lg:p-12 xl:p-5 w-full lg:w-1/2 xl:w-1/3 mx-auto"
        >
          <div class="bg-white px-14 py-5 rounded-md relative filter drop-shadow-lg flex flex-col justify-between">
            <div
              class="bg-green-300 rounded-full h-14 w-14 text-xl
              flex items-center justify-center text-white
              absolute -top-7 left-1/2 transform -translate-x-1/2"
            >
              <FontAwesomeIcon :icon="['fas', 'quote-right']" />
            </div>

            <p class="text-xl whitespace-pre-line italic text-center text-gray-400 font-playfair-display">
              {{ quote.text }}
            </p>

            <p class="uppercase font-semibold text-center text-gray-500 mt-8">
              {{ quote.quotee }}
            </p>
          </div>
        </div>
      </div>
    </div>

    <div class="bg-gray-blue-50 min-h-96 p-8 pb-56 md:p-16 md:pb-56 lg:p-32 lg:pb-56 flex flex-col items-start">
      <div class="h-16 w-16 rounded-full flex items-center justify-center border border-gray-400">
        <div class="bg-blue-300 rounded-full h-14 w-14 text-4xl text-white flex items-center justify-center">
          <FontAwesomeIcon :icon="['fab', 'react']" />
        </div>
      </div>

      <span class="font-semibold text-blue-400 mt-6">Build anything</span>
      <h3 class="text-4xl font-semibold mt-2">
        Build whatever from your idea, seriously.
      </h3>
      <p class="max-w-3xl mt-4 text-gray-500">
        Turning an Idea to a business.
        Figure out what problem is being solved.
        Find your market.
        Find your support, have you ever noticed how few successful startups were founded by just one person?
        So, here we are. To build the MVP.
      </p>

      <button
        class="py-2 px-5 rounded-full flex items-center mt-5 text-sm font-semibold
        text-white bg-blue-500 hover:bg-blue-600 focus:outline-none focus:ring focus:ring-blue-200"
      >
        <span class="inline">Contact Us</span>
        <div class="ml-2">
          <FontAwesomeIcon :icon="['fas', 'chevron-right']" />
        </div>
      </button>
    </div>
  </div>
</template>

<script>
import wadawChipset from '@/assets/images/wadaw-chipset.png';

export default {
  name: 'IndexPage',
  data() {
    return {
      wadawChipset,
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
      quotes: [
        {
          quotee: 'Albert Einstein',
          text: `Creativity is
            intelligence having fun.`,
        },
        {
          quotee: 'Edward de Bono',
          text: 'Creativity involves breaking out of expected patterns in order to look at things in a different way.',
        },
        {
          quotee: 'Edwin Land',
          text: 'An essential aspect of creativity is not being afraid to fail.',
        },
      ],
    };
  },
};
</script>
