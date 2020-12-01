<template>
  <footer>
    <span class="mb-1">
      &copy; <a href="https://instagram.com/wadaw_project" target="blank">Wadaw Project</a> 2020
    </span>
    <span>
      Made with <font-awesome-icon icon="heart" color="#ffffffa4"/> in Balikpapan
    </span>
  </footer>
</template>

<script>
export default {
  data: () => ({
  }),
};
</script>

<style lang="scss" scoped>
  footer {
    * {
      font-family: 'Source Sans Pro', -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto',
        'Oxygen', 'Ubuntu', 'Cantarell', 'Fira Sans', 'Droid Sans', 'Helvetica Neue',
        sans-serif;
    }

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
</style>
