const year = new Date().getFullYear();
const footer = document.querySelector(".site-footer p");

if (footer) {
  footer.textContent = `Built and self-hosted by Edward. ${year}`;
}
