import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = ['search']

  connect() {
    try {
      const search_term = this.searchTarget.innerText.trim();
      window.history.pushState({}, '', `/?search=${search_term}`)
    } catch {
      return;
    }
  }

  async copy(event) {
    const text = event.target.innerText;
    await navigator.clipboard.writeText(text);
    alert('Copied to clipboard!');
  }
}
