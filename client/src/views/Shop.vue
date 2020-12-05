<template>
  <div id="shop">
    <div class="container">
      <div class="logo-wrapper">
        <div class="logo">
          <v-img :src="require('./../assets/images/logo-white.png')"/>
        </div>
      </div>

      <div class="header-wrapper">
        <div class="header">
          <h1 class="text-center">Products List</h1>
        </div>
      </div>

      <div id="products-list">
        <v-row dense>
          <v-col
            cols="12"
            sm="12" md="6" lg="4"
            class="mb-4"
            v-for="(product, index) in products"
            :key="index"
          >
            <v-card class="d-flex flex-column">
              <v-img
                :src="product.attributes.image_url"
                class="image-product"
                gradient="to bottom, rgba(141, 152, 169, 0.1), rgba(35, 37, 49, 0.6)"
              >
                <v-chip class="price">
                  IDR {{ Number(product.attributes.price || 0) / 1000 }}K
                </v-chip>
              </v-img>

              <v-card-text>
                <v-row
                  align="center"
                  class="mx-0"
                >
                  <v-rating
                    :value="4.5"
                    color="amber"
                    dense
                    half-increments
                    readonly
                    size="14"
                  ></v-rating>

                  <div class="grey--text ml-4">
                    4.5 (15)
                  </div>
                </v-row>

                <div class="my-4 subtitle-1">
                  {{ product.name }}
                </div>

                <div>{{ product.attributes.info }}</div>
              </v-card-text>

              <v-spacer></v-spacer>

              <v-card-actions>
                <p class="ma-0 pl-2">{{ product.attributes.product_code }}</p>

                <v-spacer></v-spacer>

                <v-btn icon>
                  <font-awesome-icon icon="clone"/>
                </v-btn>
              </v-card-actions>
            </v-card>
          </v-col>
        </v-row>
      </div>
    </div>
  </div>
</template>

// https://cdn.dribbble.com/users/3107626/screenshots/6474827/fancy-04.jpg

<script>
import '@/assets/stylesheets/shop.scss';

// MIXINS
import InternalFetcher from '../mixins/internalFetcher';

export default {
  mixins: [InternalFetcher],
  data: () => ({
    carouselItems: [
      {
        number: 'first',
        title: 'Special Covid Edition',
        text: 'Was released due to the 2019 pandemic',
        src: 'https://res.cloudinary.com/havus/image/upload/v1602082303/wadaw/big-logo-white_qazt9z.png',
      },
      {
        number: 'second',
        title: 'Covid makes people stupid',
        text: `Since covid-19 has become a major problem for all humans are living in this era,
        people around the world have became unproductive, losing inspiration and enthusiasm
        for survive in conditions that force them to stay at home.`,
        src: 'https://res.cloudinary.com/havus/image/upload/v1602429113/wadaw/products/CMPS_carousel_axqwbm.jpg',
      },
      {
        number: 'third',
        title: 'Love in 2020',
        text: `Many stories of good and bad relationships during the covid-19 pandemic.
        Love in 2020 is the reality of today's relationships that are limited
        by distance and insecurity.`,
        src: 'https://res.cloudinary.com/havus/image/upload/v1602429113/wadaw/products/LI_carousel_oevocg.jpg',
      },
    ],
    products: [],
  }),
  async mounted() {
    const { data: allProducts } = await this.getAllProducts();
    this.products = allProducts;
  },
};
</script>
