<template>
  <div id="shop">
    <div id="products-list">
      <div class="container pt-10">
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

        <v-row dense>
          <v-col
            lg="4" md="6" sm="12"
            class="pa-3"
            v-for="(product, index) in products" :key="index"
          >
            <v-card class="d-flex flex-column">
              <v-img
                :src="product.src"
                class="image-product"
                gradient="to bottom, rgba(141, 152, 169, 0.1), rgba(35, 37, 49, 0.6)"
              >
                <v-chip class="price">IDR {{ product.price }}K</v-chip>
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
                    4.5 (413)
                  </div>
                </v-row>

                <div class="my-4 subtitle-1">
                  {{ product.name }}
                </div>

                <div>{{ product.content }}</div>
              </v-card-text>

              <v-spacer></v-spacer>

              <v-card-actions>
                <p class="ma-0 pl-2">Product Code</p>
                <!-- <v-btn color="transparent" depressed>DETAIL</v-btn> -->

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

export default {
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
    products: [
      {
        name: 'Love in 2020',
        src: 'https://res.cloudinary.com/havus/image/upload/v1602427840/wadaw/products/LI-large_pi17cl.jpg',
        price: '130',
        content: `Many stories of good and bad relationships during the covid-19 pandemic.
          Love in 2020 is the reality of today's relationships that are limited
          by distance and insecurity.`,
      },
      {
        name: 'Covid makes people stupid',
        src: 'https://res.cloudinary.com/havus/image/upload/v1602427840/wadaw/products/CMPS_large_xnygrr.jpg',
        price: '130',
        content: `Since covid-19 has become a major problem for all humans are living in this era,
          people around the world have became unproductive, losing inspiration and enthusiasm
          for survive in conditions that force them to stay at home.`,
      },
    ],
  }),
};
</script>
