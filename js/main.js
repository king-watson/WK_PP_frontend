import './modules/hamburger.js';
import './modules/hero.js';
import { movies } from './modules/movies.js';

const navLinks = document.querySelectorAll('#nav-menu a, #desktopMenu a');

function handleNavClick(e) {
  e.preventDefault();

  const target = e.currentTarget.getAttribute('href');

  if (target && document.querySelector(target)) {
    gsap.to(window, {
      duration: 1,
      scrollTo: target,
      ease: 'power2.inOut'
    });
  }
}

navLinks.forEach(function addScrollListener(link) {
  link.addEventListener('click', handleNavClick);
});

movies();