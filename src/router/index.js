import Vue from 'vue';
import VueRouter from 'vue-router';

Vue.use(VueRouter);

const routes = [
  {
    path: '/',
    name: 'Landing',
    component: () => import(/* webpackChunkName: "landing" */ '../views/Landing.vue'),
  },
  {
    path: '/events',
    name: 'Events',
    component: () => import(/* webpackChunkName: "home" */ '../views/Events.vue'),
  },
  {
    path: '/event/:eventName',
    name: 'Event',
    component: () => import(/* webpackChunkName: "home" */ '../views/Event.vue'),
  },
  {
    path: '/shop',
    name: 'Shop',
    component: () => import(/* webpackChunkName: "shop" */ '../views/Shop.vue'),
  },
];

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes,
});

export default router;
