import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {}
  handleLoginClick(e) {
    e.preventDefault();
    var form = document.getElementById("new_user");
    var button = document.getElementById("login_form_btn");
    button.addEventListener("click", function () {
      form.submit();
    });
  }
}