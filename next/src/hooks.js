/** @type {import('@sveltejs/kit').GetSession} */
export function getSession(event) {
	// as a reminder to the strangeness of the Headers API:  https://developer.mozilla.org/en-US/docs/Web/API/Headers
	return {
		headers : Object.fromEntries(event.request.headers.entries())
	}
}
