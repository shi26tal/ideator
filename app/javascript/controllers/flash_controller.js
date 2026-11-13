import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flash"
export default class extends Controller {
  connect() {
    setTimeout(() => {
      // Finds all HTML elements with the flash class.
      document.querySelectorAll('.flash').forEach((element) => {
        element.outerHTML = '';
      });
    }, 5000);
  }

  // Runs when the user clicks the close button and removes its closest .flash element.
  dismiss(event) {
    event.target.closest('.flash').outerHTML = '';
  }
}
