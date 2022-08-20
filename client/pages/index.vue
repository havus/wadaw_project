<template>
  <div class="text-gray-blue-900">
    <div class="bg-gray-blue-900 py-12">
      <div class="container mx-auto flex flex-wrap flex-col lg:flex-row justify-center lg:justify-between lg:mt-24 lg:mb-20 px-10 lg:px-20">
        <div id="main-title" class="text-white max-w-112">
          <!-- <h1 class="text-2xl font-medium tracking-wider">
            <span class="text-4xl font-bold text-orange-300">W</span>ell-being
          </h1>

          <h1 class="text-2xl font-medium tracking-wider">
            <span class="text-4xl font-bold text-orange-300">A</span>mbition
          </h1>

          <h1 class="text-2xl font-medium tracking-wider">
            <span class="text-4xl font-bold text-orange-300">D</span>desire
          </h1>

          <h1 class="text-2xl font-medium tracking-wider">
            <span class="text-4xl font-bold text-orange-300">A</span>ccuration
          </h1>

          <h1 class="text-2xl font-medium tracking-wider">
            <span class="text-4xl font-bold text-orange-300">W</span>orthwhile
          </h1> -->

          <h1 class="text-4xl font-bold tracking-wide">
            <!-- <span class="text-orange-300">W</span>ild -->
            <VueTyper
              text="Wild"
              :repeat="0"
              :shuffle="false"
              initial-action="typing"
              :pre-type-delay="2000"
              :type-delay="30"
              :erase-on-complete="false"
              caret-animation="phase"
            />
            <!-- end 2000 + (30*4) = 2120 -->
          </h1>

          <h1 class="text-4xl font-bold tracking-wide">
            <!-- <span class="text-orange-300">A</span>mbition -->
            <VueTyper
              text="Ambition"
              :repeat="0"
              :shuffle="false"
              initial-action="typing"
              :pre-type-delay="2120"
              :type-delay="30"
              :erase-on-complete="false"
              caret-animation="phase"
            />
            <!-- end 2120 + (30*8) = 2360 -->
          </h1>

          <h1 class="text-4xl font-bold tracking-wide">
            <!-- <span class="text-orange-300">D</span>iscover -->
            <VueTyper
              text="Discover"
              :repeat="0"
              :shuffle="false"
              initial-action="typing"
              :pre-type-delay="2360"
              :type-delay="30"
              :erase-on-complete="false"
              caret-animation="phase"
            />
            <!-- end 2360 + (30*8) = 2600 -->
          </h1>

          <h1 class="text-4xl font-bold tracking-wide">
            <!-- an <span class="text-orange-300">A</span>mazing -->
            <VueTyper
              text="an Amazing"
              :repeat="0"
              :shuffle="false"
              initial-action="typing"
              :pre-type-delay="2600"
              :type-delay="30"
              :erase-on-complete="false"
              caret-animation="phase"
            />
            <!-- end 2600 + (30*10) = 2900 -->
          </h1>

          <h1 class="text-4xl font-bold tracking-wide">
            <!-- <span class="text-orange-300">W</span>ay -->
            <!-- open at 2.9s -->
            <VueTyper
              text="Way..."
              :repeat="Infinity"
              :shuffle="false"
              initial-action="erasing"
              :pre-type-delay="1100"
              :type-delay="300"
              :pre-erase-delay="1500"
              :erase-delay="150"
              erase-style="select-all"
              :erase-on-complete="true"
              caret-animation="phase"
            />
            <!-- end 2900 + (300*6) = 4700 -->
          </h1>

          <div class="mt-9 w-36 h-1 bg-orange-300 rounded-full" />

          <div class="tracking-wider mt-3 text-gray-200 font-extralight animate-scoll-fade-in-out">
            <b class="font-bold text-white">WADAW - Playground for developing creativity.</b>
            <p>
              We embracing people in all fields by providing a platform for them to make their ideas happen.
              Help realize ideas without take their copyright.
            </p>
          </div>
        </div>

        <img :src="wadawChipset" class="mt-10 p-5 sm:p-0 max-h-96 mx-auto my-7 lg:my-0 lg:mr-0 lg:max-h-96 order-first lg:order-last animate-pulse" alt="Wadaw chipset">
      </div>
    </div>

    <!-- Gain More Experience with Us -->
    <div class="bg-white my-20">
      <div class="container p-8 mx-auto flex justify-center">
        <div class="grid grid-cols-1 lg:grid-cols-2 justify-items-center gap-7">
          <div class="grid grid-cols-1 md:grid-cols-2 justify-items-center gap-4 w-full order-2 lg:order-1">
            <div
              v-for="(experience, i) in experiences" :key="i"
              v-scollanimation
              class="flex flex-col rounded border-1 p-5 w-full items-center lg:items-start"
            >
              <div class="w-12 h-12 bg-orange-100 rounded-full flex justify-center items-center">
                <div class="text-3xl text-orange-300">
                  <FontAwesomeIcon :icon="experience.icon" size="xs" />
                </div>
              </div>

              <h1 class="text-xl font-bold text-gray-blue-800 mt-2 text-center lg:text-left">
                {{ experience.title }}
              </h1>

              <p class="font-extralight mt-2 max-w-48 text-gray-blue-700 text-center lg:text-left">
                {{ experience.text }}
              </p>
            </div>
          </div>

          <div class="flex flex-col justify-center pb-28 order-1 lg:order-2">
            <h1 class="text-3xl font-semibold">
              <span class="text-orange-300 underline underline-offset-8">We</span>
              make a good shit!
            </h1>

            <p class="font-extralight mt-2 max-w-96">
              Sometimes we need to think outside the box,
              to find out anti-mainstream way to solve a problem.
              Creative and critical thinking bring us to think different.
              Deep dive and discover The Real Problem,
              what customer needs. Gathering a list of ideas
              then brainstorming.
            </p>
          </div>
        </div>
      </div>
    </div>

    <div class="bg-gray-blue-900 py-20 mx-auto">
      <div class="container mx-auto flex flex-col">
        <img :src="target" class="max-h-28 mx-auto animate-pulse">

        <h1 class="text-white mt-5 text-4xl font-bold mx-auto text-center tracking-wide">
          Build whatever<br>from your <span class="text-orange-300">creative</span> idea
        </h1>

        <p class="text-gray-200 mt-9 mx-auto text-center leading-7 tracking-wide" style="max-width: 37rem;">
          Turning a creative Idea to a business. Figure out what problem is being solved. Find your market. Find your support, have you ever noticed how many creative ideas are growing to be even bigger now? Brave to start something, use failure as a way to discover your strength.
          <br>Be a <span class="text-orange-300 font-bold">Risk-Taker!</span>
        </p>
      </div>
    </div>

    <!-- Quotes - start -->
    <!-- <div class="container mx-auto flex justify-center">
      <div class="w-112 h-0.5 bg-gradient-to-r from-white via-gray-200 to-white my-20" />
    </div> -->

    <div class="bg-gray-blue-50 bg-gradient-to-b from-white py-40">
      <div class="container p-8 lg:px-32 mx-auto flex flex-wrap">
        <div
          v-for="(quote, i) in quotes" :key="i"
          v-scollanimation
          class="w-full lg:w-1/2 xl:w-1/3 mx-auto mb-12 lg:p-4"
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
    <!-- Quotes - end -->
  </div>
</template>

<script>
import { VueTyper } from 'vue-typer';
import wadawChipset from '@/assets/images/wadaw-chipset.png';
import target from '@/assets/images/target.png';

export default {
  name: 'IndexPage',
  components: { VueTyper },
  data() {
    return {
      wadawChipset,
      target,
      experiences: [
        {
          icon: ['far', 'lightbulb'],
          title: 'Start Your Idea',
          text: "It's never too late to start something. And even though it's late, better late than never.",
        },
        {
          icon: ['fas', 'people-roof'],
          title: 'Open Discuss',
          text: 'Criticizing idea and gather creative problem solving. And develop SMART goals.',
        },
        {
          icon: ['fas', 'bolt-lightning'],
          title: 'Execute The Plan',
          text: "Is an easy concept to talk about, but it's a hard one to well... Execute!",
        },
        {
          icon: ['fas', 'road'],
          title: 'Keep on track',
          text: 'Assign tasks. Establish regular communication. Track our progress. Evaluate performance.',
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

<style>
  #main-title .vue-typer .custom.char.typed {
    color: white;
  }

  #main-title h1:first-child .vue-typer .custom.char.typed:first-child,
  #main-title h1:nth-child(2) .vue-typer .custom.char.typed:first-child,
  #main-title h1:nth-child(3) .vue-typer .custom.char.typed:first-child,
  #main-title h1:nth-child(4) .vue-typer .custom.char.typed:nth-child(4),
  #main-title h1:nth-child(5) .custom.char.typed:first-child {
    color: #F86D3F;
  }

  #main-title .vue-typer .custom.caret {
    width: 7px;
    background-color: white;
  }

  @keyframes cssAnimationHide {
    to { opacity: 1; }
  }
  @-webkit-keyframes cssAnimationHide {
    to { opacity: 1; }
  }
  /* 2120,2360,2600,3500 */

  #main-title h1:nth-child(2) {
    animation: cssAnimationHide 0s 2.1s forwards;
    opacity: 0;
    /* Firefox */
    -moz-animation: cssAnimationHide 0s 2.1s forwards;
    /* Safari and Chrome */
    -webkit-animation: cssAnimationHide 0s 2.1s forwards;
    /* Opera */
    -o-animation: cssAnimationHide 0s 2.1s forwards;
  }

  #main-title h1:nth-child(3) {
    animation: cssAnimationHide 0s 2.3s forwards;
    opacity: 0;
    /* Firefox */
    -moz-animation: cssAnimationHide 0s 2.3s forwards;
    /* Safari and Chrome */
    -webkit-animation: cssAnimationHide 0s 2.3s forwards;
    /* Opera */
    -o-animation: cssAnimationHide 0s 2.3s forwards;
  }

  #main-title h1:nth-child(4) {
    animation: cssAnimationHide 0s 2.6s forwards;
    opacity: 0;
    /* Firefox */
    -moz-animation: cssAnimationHide 0s 2.6s forwards;
    /* Safari and Chrome */
    -webkit-animation: cssAnimationHide 0s 2.6s forwards;
    /* Opera */
    -o-animation: cssAnimationHide 0s 2.6s forwards;
  }
  #main-title h1:nth-child(5) .vue-typer:nth-child(1) {
    animation: cssAnimationHide 0s 2.9s forwards;
    opacity: 0;
    /* Firefox */
    -moz-animation: cssAnimationHide 0s 2.9s forwards;
    /* Safari and Chrome */
    -webkit-animation: cssAnimationHide 0s 2.9s forwards;
    /* Opera */
    -o-animation: cssAnimationHide 0s 2.9s forwards;
  }

  /* #main-title .vue-typer {
    .custom.char {
      &.typed {
      }
      &.selected {
      }
      &.erased {
      }
    }
  } */
</style>
