

import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ 'count' ];

  refresh() {
    fetch('/bookings', { headers: { accept: 'application/json' } })
      .then(response => response.json())
      .then((data) => {
        this.countTarget.innerText = data.bookings.length;
      });
  }
}
