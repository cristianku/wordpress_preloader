document.addEventListener("DOMContentLoaded", function () {
    const preloader = document.getElementById('preloader');
    setTimeout(() => {
        preloader.style.display = 'none'; // Hide the preloader
    }, 4000); // Matches the total animation duration (3s fill + 1s fade out)
});
