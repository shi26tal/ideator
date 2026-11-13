import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="modal"
export default class extends Controller {
  hideModal() {
    var modalInstance = FlowbiteInstances.getInstance('Modal', 'default-modal');
    if(modalInstance) {
      modalInstance.hide();
    }
  }
}

// Stimulus is a JavaScript framework that connects JavaScript behaviour to HTML elements using attributes such as data-controller and data-action