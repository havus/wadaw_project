<template>
  <div id="shop">
    <div id="bg-navbar"></div>
    <v-carousel
      cycle
      height="500"
      show-arrows-on-hover
      hide-delimiters
    >
      <v-carousel-item v-for="item in carouselItems" :key="item.number">
        <div :class="'carousel-item ' + item.number">
          <div class="text-theme">
            <h3>{{ item.title }}</h3>
            <p>{{ item.text }}</p>
          </div>
          <div class="back-img">
            <v-img :src="item.src"/>
          </div>
        </div>
      </v-carousel-item>
    </v-carousel>

    <div id="products-list">
      <div class="container pt-10">
        <h1 class="text-center mb-5">Our Products</h1>
        <v-row dense>
          <v-col
            lg="4" md="6" sm="12"
            class="pa-3"
            v-for="(product, index) in products" :key="index"
          >
            <v-card>
              <v-img
                :src="product.src"
                class="image-product"
                gradient="to bottom, rgba(141, 152, 169, 0.1), rgba(35, 37, 49, 0.6)"
              >
                <v-chip class="price">IDR {{ product.price }}K</v-chip>
              </v-img>

              <v-card-actions>
                <v-btn color="transparent" depressed>DETAIL</v-btn>

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
        src: 'https://res.cloudinary.com/havus/image/upload/v1602427568/wadaw/products/CMPS_carousel_xqkjcp.jpg',
      },
      {
        number: 'third',
        title: 'Love in 2020',
        text: `Many stories of good and bad relationships during the covid-19 pandemic.
        Love in 2020 is the reality of today's relationships that are limited
        by distance and insecurity.`,
        src: 'https://res.cloudinary.com/havus/image/upload/v1602427568/wadaw/products/LI_carousel_okbjj5.jpg',
      },
    ],
    products: [
      {
        src: 'https://res.cloudinary.com/havus/image/upload/v1602427840/wadaw/products/LI-large_pi17cl.jpg',
        price: '130',
      },
      {
        src: 'https://res.cloudinary.com/havus/image/upload/v1602427840/wadaw/products/CMPS_large_xnygrr.jpg',
        price: '130',
      },
    ],
  }),
};
</script>
