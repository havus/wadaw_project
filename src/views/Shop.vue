<template>
  <div id="shop">
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
        src: 'https://res.cloudinary.com/havus/image/upload/v1602082303/wadaw/products/CMPS_jues7g.jpg',
      },
      {
        number: 'third',
        title: 'Love in 2020',
        text: `Many stories of good and bad relationships during the covid-19 pandemic.
        Love in 2020 is the reality of today's relationships that are limited
        by distance and insecurity.`,
        src: 'https://res.cloudinary.com/havus/image/upload/v1602082303/wadaw/products/LI_qxtpu5.jpg',
      },
    ],
    products: [
      {
        src: 'https://res.cloudinary.com/havus/image/upload/v1602082303/wadaw/products/LI_qxtpu5.jpg',
        price: '130',
      },
      {
        src: 'https://res.cloudinary.com/havus/image/upload/v1602422857/wadaw/products/CMPS_ugf3tj.png',
        price: '130',
      },
    ],
  }),
};
</script>

<style lang="scss">
  #shop {
    padding-bottom: 200px;
  }
  .carousel-item {
    position: relative;
    display: flex;
    width: 100%;
    height: 100%;
    justify-content: center;
    align-items: center;

    .back-img {
      max-width: 400px;
    }
  }
  .text-theme {
    position: absolute;
    align-self: flex-end;
    justify-self: self-start;
    left: 0;
    padding: 30px;
    z-index: 2;
    border-radius: 0 15px 15px 0;

    p {
      max-width: 400px;
    }
  }

  .carousel-item.first {
    background-color: rgb(25, 26, 38);
  }
  .carousel-item.second, .carousel-item.third {
    background-color: white;
  }

  .first .text-theme {
    color: white;
  }
  .second .text-theme, .third .text-theme {
    background-color: rgba(51, 48, 67, 0.634);
    color: white;
  }

  #products-list {
    .v-image__image.v-image__image--cover {
      transition: .5s;
      background-size: 100%;
    }
    .v-image:hover .v-image__image--cover {
      background-size: 120%;
    }

    .price {
      position: absolute;
      bottom: 15px;
      left: 15px;
      background-color: rgba(38, 38, 44, 0.5) !important;
      color: white !important;
    }
  }
</style>
