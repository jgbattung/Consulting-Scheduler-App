import { Controller } from "@hotwired/stimulus"

let elements
const csrfToken = document.getElementsByName("csrf-token")[0].content

const stripe = Stripe(
	document.getElementsByName("stripe-public-key")[0].content
)

export default class extends Controller {
	static value = {
			item: String,
			returnURL: String
	}

	static targets = ["element", "submit", "form", "name", "email"]
	connect() {}
}
