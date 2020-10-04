<template>
  <div id="footer">
    <span>
      Copyright &copy; 2020 by <a href="https://instagram.com/wadaw_project" target="blank">Wadaw Project</a>
    </span>

    <span>
      Made with <font-awesome-icon icon="heart" color="red"/> in Balikpapan
    </span>
    <!-- <v-spacer></v-spacer> -->
  </div>
</template>

<script>
export default {
  data: () => ({
  }),
};
</script>

<style lang="scss" scoped>
  #footer {
    background-color: #343b54;
    position: absolute;
    bottom: 0;
    width: 100%;
    color: white;
    padding: 30px;
    display: flex;
    flex-direction: column;
    align-items: center;

    a {
      color: rgb(174, 185, 235);
      font-weight: 600;
      text-decoration: none;

      &:hover {
        text-decoration: none;
        color: rgb(102, 148, 255);
      }
    }
  }
</style>
