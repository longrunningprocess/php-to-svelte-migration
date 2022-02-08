<script>
import { session } from '$app/stores'
import { getData } from '$lib/data'

let data = []

async function load() {
	data = await getData()
}
</script>

<svelte:head>
	<title>Shiny</title>
</svelte:head>

<h1>✨ Shiny ✨ (next app)</h1>

<h2>session</h2>
<pre>{ JSON.stringify($session, null, 2) }</pre>

<h2>data</h2>
<button on:click={load}>load data from legacy app</button>
<pre>{ JSON.stringify(data, null, 2) }</pre>
