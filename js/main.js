import './modules/hamburger.js';

const navLinks = document.querySelectorAll("#menu a, #desktopMenu a");

function handleNavClick(e) {
    e.preventDefault();
    const target = e.currentTarget.getAttribute("href");
    gsap.to(window, {
        duration: 1,
        scrollTo: target,
        ease: "power2.inOut"
    });
}

navLinks.forEach(function addScrollListener(link) {
    link.addEventListener("click", handleNavClick);
});