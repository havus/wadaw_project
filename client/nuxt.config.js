export default {
  // Disable server-side rendering: https://go.nuxtjs.dev/ssr-mode
  ssr: false,

  // Global page headers: https://go.nuxtjs.dev/config-head
  head: {
    title: 'Wadaw Project',
    meta: [
      { charset: 'utf-8' },
      { name: 'viewport', content: 'width=device-width, initial-scale=1' },
      { name: 'format-detection', content: 'telephone=no' },

      // see: https://search.google.com/
      { name: 'google-site-verification', content: 'LtLPMrAnYArIUDyhgDZLDfnlYrCqRXy-yvb7oSUr3RE' },

      { hid: 'og:url', name: 'og:url', content: 'https://wadaw.id' },
      { hid: 'og:title', name: 'og:title', content: 'Wadaw Project' },

      { hid: 'description', name: 'description', content: 'Embracing people in all fields by providing a platform for them to make their ideas happen. Help realize ideas without take their copyright.' },
      { hid: 'og:description', name: 'og:description', content: 'Embracing people in all fields by providing a platform for them to make their ideas happen. Help realize ideas without take their copyright.' },
    ],
    link: [
      { rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' },
      { rel: 'dns-prefetch', href: 'https://fonts.gstatic.com/' },
      { rel: 'preconnect', href: 'https://fonts.googleapis.com/', crossorigin: true },
    ],
  },

  // Global CSS: https://go.nuxtjs.dev/config-css
  css: [
  ],

  // Plugins to run before rendering page: https://go.nuxtjs.dev/config-plugins
  plugins: [
  ],

  // Auto import components: https://go.nuxtjs.dev/config-components
  components: true,

  // Modules for dev and build (recommended): https://go.nuxtjs.dev/config-modules
  buildModules: [
    // https://go.nuxtjs.dev/eslint
    '@nuxtjs/eslint-module',
    // https://go.nuxtjs.dev/tailwindcss
    '@nuxtjs/tailwindcss',
    // https://github.com/nuxt-community/fontawesome-module#readme
    '@nuxtjs/fontawesome',
    // https://google-fonts.nuxtjs.org/setup/
    '@nuxtjs/google-fonts',
  ],

  fontawesome: {
    icons: {
      solid: [
        'faHome', 'faUsers', 'faCogs', 'faQuoteRight', 'faChevronRight', 'faBars', 'faHeart',
        'faArrowCircleRight'
      ],
      regular: ['faLightbulb'],
      brands: ['faReact'],
    },
  },

  googleFonts: {
    families: {
      Quicksand: [300, 400, 500, 600, 700],
      PlayfairDisplay: true,
    },
  },

  // Modules: https://go.nuxtjs.dev/config-modules
  modules: [
    // https://go.nuxtjs.dev/axios
    '@nuxtjs/axios',
    // https://go.nuxtjs.dev/pwa
    '@nuxtjs/pwa',
    // https://github.com/nuxt-community/gtm-module
    '@nuxtjs/gtm',
  ],

  gtm: {
    id: process.env.GOOGLE_TAG_MANAGER_ID, // https://tagmanager.google.com/
  },
  publicRuntimeConfig: {
    gtm: {
      id: process.env.GOOGLE_TAG_MANAGER_ID,
    },
  },
  privateRuntimeConfig: {
    // apiSecret: some secret stuff..
  },

  // Axios module configuration: https://go.nuxtjs.dev/config-axios
  axios: {
    // Workaround to avoid enforcing hard-coded localhost:3000: https://github.com/nuxt-community/axios-module/issues/308
    baseURL: '/',
  },

  // PWA module configuration: https://go.nuxtjs.dev/pwa
  pwa: {
    manifest: {
      lang: 'en',
    },
  },

  tailwindcss: {
    jit: true,
  },

  // Build Configuration: https://go.nuxtjs.dev/config-build
  build: {
  },
};
