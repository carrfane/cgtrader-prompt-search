import { Controller } from '@hotwired/stimulus'

export default class extends Controller {
  static targets = ['search', 'results', 'result']

  async fetch() {
    event.preventDefault();
    const search_term = this.searchTarget.value;
    const response = await fetch(`/search?q=${search_term}`);
    const responseHTML = await response.text();
    this.resultsTarget.innerHTML = responseHTML;
    window.history.pushState({}, '', `/?q=${search_term}`);
  }

  async copy(event) {
    const text = event.target.innerText;
    await navigator.clipboard.writeText(text);
    alert('Copied to clipboard!');
  }
}
