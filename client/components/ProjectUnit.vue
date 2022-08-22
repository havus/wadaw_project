
<template>
  <div class="my-7 rounded bg-white p-7 filter drop-shadow-lg">
    <div id="header-project" class="flex flex-col md:flex-row">
      <div class="flex flex-row flex-wrap items-center">
        <h1 class="text-xl font-semibold mr-3">
          {{ content.name }}
        </h1>

        <Label class="mr-3" :variant="labelVariant">
          {{ content.status }}
        </Label>
      </div>

      <div class="flex flex-row items-center flex-1 mt-2 md:mt-0">
        <div class="flex-1 bg-gray-200 rounded-full h-2.5 mr-3">
          <div class="bg-green-500 h-2.5 rounded-full" :style="`width: ${progressTweened}%`" />
        </div>

        <p class="text-bold basis-1/2 text-gray-blue-700">
          {{ progressTweened.toFixed(0) }}%
        </p>
      </div>
    </div>

    <p class="font-extralight text-gray-blue-800 mt-5">
      {{ content.description }}
    </p>

    <!-- TASKS -->
    <div id="tesks">
      <Collapse
        class="mt-7"
        title="Tasks"
        :badge-counter="tasks.length"
      >
        <div
          v-for="(task, i) in tasks" :key="i"
          class="pl-5"
        >
          <div class="flex">
            <FontAwesomeIcon
              v-if="task.status && task.status.toLowerCase() == 'done'"
              :icon="['fas', 'circle-check']"
              class="text-green-400 text-xl mt-1"
            />
            <FontAwesomeIcon
              v-else-if="task.status && task.status.toLowerCase() == 'in progress'"
              :icon="['fas', 'circle-notch']"
              class="text-blue-500 text-xl mt-1 animate-spin"
            />
            <FontAwesomeIcon
              v-else
              :icon="['far', 'circle']"
              class="text-gray-blue-600 text-xl mt-1"
            />

            <div class="ml-3 flex flex-col w-full">
              <h2 class="text-lg font-semibold text-gray-blue-600 mb-1">
                {{ task.title }}
              </h2>

              <p class="font-extralight">
                {{ task.content }}
              </p>

              <div
                v-if="i != tasks.length - 1"
                class="w-full h-0.5 bg-gray-200 rounded-full my-4"
              />
            </div>
          </div>
        </div>
      </Collapse>
    </div>

    <!-- TECH STACK -->
    <div id="tech-stacks">
      <Collapse
        class="mt-7"
        title="Tech Stack"
        :badge-counter="techStack.length"
      >
        <div class="flex flex-wrap pl-5">
          <img
            v-for="(stack, i) in techStack" :key="i"
            :src="iconDisplay(stack)"
            class="max-h-9 mr-10"
            :alt="`${stack}-logo`"
          >
        </div>
      </Collapse>
    </div>

    <!-- CONTRIBUTORS -->
    <div id="contributors">
      <Collapse
        class="mt-7"
        title="Contributors"
        :badge-counter="contributors.length"
      >
        <div class="flex flex-wrap pl-5">
          <div
            v-for="(contributor, i) in contributors" :key="i"
            class="flex mr-3 mb-3 border border-gray-300 p-4 rounded max-w-96"
          >
            <img
              :src="profileImageDisplay(contributor.url_profile)"
              class="max-h-9 rounded-full mr-3"
              :alt="`${contributor.username}-profile`"
            >

            <div class="font-extralight">
              <div class="flex">
                <h3 class="font-semibold">
                  {{ contributor.full_name }}
                </h3>

                <span class="ml-1">
                  @{{ contributor.username }}
                </span>
              </div>

              <div class="flex flex-wrap">
                <span
                  v-for="(role, j) in rolesContributorSummarizer(contributor)"
                  :key="j"
                  class="mr-1"
                >
                  {{ `${role}${(j != rolesContributorSummarizer(contributor).length - 1) ? ',' : ''} ` }}
                </span>
              </div>
            </div>
          </div>
        </div>
      </Collapse>
    </div>
  </div>
</template>

<script>
import { gsap } from 'gsap';
import golangLogo from '@/assets/images/tech_stack_logos/golang-logo.png';
import flutterLogo from '@/assets/images/tech_stack_logos/flutter-logo.png';
import nodejsLogo from '@/assets/images/tech_stack_logos/nodejs-logo.png';
import nuxtjsLogo from '@/assets/images/tech_stack_logos/nuxtjs-logo.png';
import tailwindcssLogo from '@/assets/images/tech_stack_logos/tailwindcss-logo.png';
import vuejsLogo from '@/assets/images/tech_stack_logos/vuejs-logo.png';
import hafidzProfileImage from '@/assets/images/hafidz-sm-tiny.png';

export default {
  name: 'ProjectUnitComponent',
  props: {
    content: {
      type: Object,
      required: true,
      default() {
        return {
          tasks: [],
          tech_stack: [],
        };
      },
    },
  },
  data() {
    return {
      golangLogo,
      flutterLogo,
      nodejsLogo,
      nuxtjsLogo,
      vuejsLogo,
      tailwindcssLogo,
      hafidzProfileImage,
      progressPercentage: 0,
      progressTweened: 0,
    };
  },
  computed: {
    tasks() {
      return this.content.tasks;
    },
    techStack() {
      return this.content.tech_stack;
    },
    contributors() {
      return this.content.contributors;
    },
    labelVariant() {
      switch (this.content.status.toLowerCase()) {
        case 'in discussion':
          return 'yellow';
        case 'in progress':
          return 'blue';
        case 'done':
          return 'green';

        default:
          return 'gray';
      }
    },
  },
  watch: {
    progressPercentage(n) {
      gsap.to(this, { duration: 2.5, progressTweened: Number(n) || 0 });
    },
  },
  mounted() {
    this.progressPercentage = this.content.progress_percentage;
  },
  methods: {
    iconDisplay(name) {
      return this[`${name.toLowerCase()}Logo`];
    },
    profileImageDisplay(urlProfile) {
      return this[`${urlProfile}ProfileImage`];
    },
    rolesContributorSummarizer(contributor) {
      const roles = contributor.roles;
      const result = [];

      for (let i = 0; i < roles.length; i++) {
        result.push(roles[i].name);
      }

      return result;
    },
  },
};
</script>

<style>
</style>
