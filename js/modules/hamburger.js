const hamburger = document.querySelector("#hamburger");
const closeButton = document.querySelector("#close");
const menuOverlay = document.querySelector("#overlay");
const menuLinks = document.querySelectorAll("#menu ul li a");

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

// I stop the default jump and just close the menu
function handleNavClick(event) {
    event.preventDefault();

    const targetId = event.currentTarget.getAttribute("href");
    const targetSection = document.querySelector(targetId);

    closeMenu();
    targetSection.scrollIntoView({ behavior: "smooth" });
}

function addNavEvents(link) {
    link.addEventListener("click", handleNavClick);
}

hamburger.addEventListener("click", toggleMenu);
closeButton.addEventListener("click", closeMenu);

menuLinks.forEach(addNavEvents);

export { toggleMenu };