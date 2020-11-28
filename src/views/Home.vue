<template>
  <div id="home">
    <v-container>
      <div class="logo-wrapper">
        <div class="logo">
          <v-img :src="require('./../assets/images/logo-white.png')"/>
        </div>
      </div>

      <div class="content-wrapper">
        <div class="content">
          <h1>WADAW</h1>
          <p>
            Merangkul orang-orang yang bergerak di bidang seni
            dan memberikan wadah bagi mereka untuk menyalurkan karyanya.
          </p>
        </div>
      </div>

      <div class="navigation-menu">
        <v-btn to="/events">Events</v-btn>
        <v-btn>Shop</v-btn>
        <v-btn>About</v-btn>
        <v-btn>Contact</v-btn>
      </div>

      <footer>
        <span>
          &copy; <a href="https://instagram.com/wadaw_project" target="blank">Wadaw Project</a>
          2020 Made with <font-awesome-icon icon="heart" color="#ffffffa4"/> in Balikpapan
        </span>
      </footer>
    </v-container>
  </div>
</template>

<script>
export default {

};
</script>

<style lang="scss">
  #home {
    $line_height: 60px;
    $button_height: 45px;

    background: linear-gradient(
      rgba(45, 46, 56, 0.8),
      rgba(45, 46, 56, 0.8),
    ), url(../assets/images/batik_2.jpg);
    background-size: cover;
    background-position: center;
    height: 100%;
    width: 100%;
    padding: 90px;

    .container {
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
    }

    .logo-wrapper {
      width: 90px;
      height: 90px;
      border-radius: 90px;
      border: 1px solid white;
      display: flex;
      justify-content: center;
      align-items: center;
    }
    .logo {
      width: 50px;
    }

    .content-wrapper {
      position: relative;
      margin-top: $line_height;
      max-width: 678px;

      &::before {
        content: '';
        display: block;
        position: absolute;
        top: -$line_height;
        left: calc(50% - 1px);
        width: 1px;
        height: $line_height;
        background: #ffffff;
      }

      &::after {
        content: '';
        display: block;
        position: absolute;
        bottom: -$line_height - $button_height - 1px;
        left: calc(50% - 1px);
        width: 1px;
        height: $line_height + $button_height + 1px;
        background: #ffffff;
      }

      @media only screen and (max-width: 700px) {
        &::after {
          height: 70px;
          bottom: -70px;
        }
      }

      .content {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        color: white;
        border-top: 1px solid white;
        border-bottom: 1px solid white;
        padding: 40px;
        width: 100%;
      }

      h1 {
        letter-spacing: 7px;
        margin-bottom: 10px;
        font-size: 37px;
      }

      p {
        line-height: 2;
        text-align: center;
        text-transform: uppercase;
        letter-spacing: 0.2rem;
        max-width: 720px;
        font-size: 13px;
      }
    }

    .navigation-menu {
      display: flex;
      margin-top: $line_height;
      border: 1px solid white;
      border-radius: 5px;
      overflow: hidden;

      .v-btn {
        background-color: transparent;
        color: white;
        border-radius: 0;
        min-width: 120px;
        height: $button_height;
        letter-spacing: 3px;
        font-weight: 400;

        &:hover, &:active {
          border-radius: 0;
        }
        &:nth-child(1), &:nth-child(3) {
          border-right: 1px solid white;
        }
      }
    }

    @media only screen and (max-width: 700px) {
      .navigation-menu {
        flex-direction: column;

        .v-btn:nth-child(1), .v-btn:nth-child(3) {
          border-right: 0;
        }
        .v-btn:not(:last-child) {
          border-bottom: 1px solid white;
        }
      }
    }

    footer {
      color: white;
      position: absolute;
      bottom: 0;
      width: 100%;
      color: white;
      padding: 40px;
      display: flex;
      flex-direction: column;
      align-items: center;
      letter-spacing: 1px;
      font-weight: 200;
      font-size: 15px;

      a {
        color: white;
        font-weight: 400;
        text-decoration: none;
        border-bottom: 1px dotted white;

        &:hover {
          text-decoration: none;
          color: rgba(255, 255, 255, 0.8);
        }
      }
    }
  }
</style>
