<template>
  <div id="events">
    <v-container>
      <h1>Event List</h1>

      <div class="card-wrapper">
        <div class="card" @click="goEventPage('event-hari-pahlawan')">
          <div class="period">
            <div class="start">1 Oktober 2020</div>
            <div class="line"/>
            <div class="end">16 Oktober 2020</div>
          </div>

          <div class="content">
            <h3>Persiapan Hari Pahlawan</h3>

            <div class="simple-info">
              <font-awesome-icon icon="map-marker-alt" class="mr-2" color="grey"/>
              <p class="mb-0 mr-5">Balikpapan</p>

              <font-awesome-icon icon="award" class="mx-2" color="grey"/>
              <p class="mb-0">IDR 500.000,00</p>
            </div>
          </div>

          <div class="cost">
            <v-chip
              color="green"
              outlined
              label
            >
              Free
            </v-chip>
          </div>
        </div>
      </div>
    </v-container>
  </div>
</template>

<script>
export default {
  methods: {
    goEventPage(eventName) {
      this.$router.push(`event/${eventName}`);
    },
  },
};
</script>

<style lang="scss">
  #events {
    padding: 50px 10px 100px;
    color: white;

    .container {
      margin-top: 70px;
      border-radius: 7px;
      background-color: rgba(24, 24, 24, 0.8);
      max-width: 920px;

      h1 {
        letter-spacing: 3px;
        border-bottom: 1px solid rgb(174, 174, 174);
        display: inline;
        margin-left: 30px;
      }

      .card-wrapper {
        margin-top: 20px;
      }

      .card {
        background-color: #212429;
        display: flex;
        position: relative;
        overflow: hidden;
        padding: 10px;
        border-radius: 5px;
        margin: 10px 0;

        &:first-child {
          margin-top: 30px;
        }
        &:last-child {
          margin-bottom: 0;
        }

        &:hover {
          background-color: #272a30;
          cursor: pointer;
        }
        &:active {
          background-color: #2b2f35;
          // cursor: pointer;
        }

        .period {
          font-weight: 300;
          height: 70px;
          width: 150px;
          border-radius: 0;
          display: flex;
          flex-direction: column;
          justify-content: center;
          align-items: center;

          .line {
            height: 1px;
            background-color: white;
            width: 70%;
          }
        }

        .cost {
          margin: 0 20px;
          display: flex;
          justify-content: center;
          align-items: center;

          p { margin: 0; }
        }

        .content {
          margin-left: 15px;
          flex-grow: 1;
          display: flex;
          flex-direction: column;

          h3 {
            letter-spacing: 1px;
            font-weight: 500;
            margin-bottom: 10px;
          }

          .simple-info {
            display: flex;
            align-items: center;

            p {
              color: rgb(165, 165, 165);
            }
          }
        }
      }
    }
  }
</style>
