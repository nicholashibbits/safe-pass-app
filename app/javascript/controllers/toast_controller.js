import { Controller } from "@hotwired/stimulus";

class ToastController extends Controller {
  connect() {
    console.log("Hello from toast");
  }
}

export default ToastController;
