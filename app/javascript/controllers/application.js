import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

$(document).ready(function() {
    $('.datepicker').datepicker({
      format: 'yyyy-mm-dd', // Formato desejado
      autoclose: true
    });
  });
  
export { application }
