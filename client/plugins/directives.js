import Vue from 'vue';

const animateScrollObserver = new IntersectionObserver(
  (entries, _animateScroll) => {
    entries.forEach((entry) => {
      entry.target.classList.toggle('animate', entry.isIntersecting);
      entry.target.classList.toggle('delay-500', entry.isIntersecting);
      entry.target.classList.toggle('motion-safe:animate-fade-in', entry.isIntersecting);
    });
  },
  { threshold: 0.5 },
);

Vue.directive('scollanimation', {
  bind(el) {
    el.classList.add('opacity-0');
    animateScrollObserver.observe(el);
  },
});
