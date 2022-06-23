import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    
  }
  change_theme() {
    var bodyTag = document.body; 
    if ( bodyTag.classList.contains('dark_theme') ) {
      bodyTag.classList.remove('dark_theme');
      bodyTag.classList.add('light_theme');
    }
    else {
      bodyTag.classList.remove('light_theme');
      bodyTag.classList.add('dark_theme');
    }
  }
}