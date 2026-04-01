const hamburger = document.querySelector("#hamburger");
const closeButton = document.querySelector("#nav-close");
const menuOverlay = document.querySelector("#nav-overlay");
const menuLinks = document.querySelectorAll("#nav-menu ul li a");

function openMenu() {
    menuOverlay.classList.add("open");
    document.body.classList.add("no-scroll");
}

function closeMenu() {
    menuOverlay.classList.remove("open");
    document.body.classList.remove("no-scroll");
}

function toggleMenu() {
    if (menuOverlay.classList.contains("open")) {
        closeMenu();
    } else {
        openMenu();
    }
}

// Close menu when a nav link is clicked, let main.js handle the scroll
function handleNavClick() {
    closeMenu();
}

hamburger.addEventListener("click", toggleMenu);
closeButton.addEventListener("click", closeMenu);

menuLinks.forEach(function(link) {
    link.addEventListener("click", handleNavClick);
});

export { toggleMenu };