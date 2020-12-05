export default {
  methods: {
    async getAllProducts() {
      const response = await fetch(`${process.env.VUE_APP_SERVER_BASE_URL}/api/v1/products.json`);
      const body = await response.json();

      return body;
    },
  },
};
