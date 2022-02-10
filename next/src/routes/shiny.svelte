<script>
import { session } from '$app/stores'
import { getData } from '$lib/data'

let data = []
let error = false

async function load() {
	try {
		data = await getData()
	} catch (e){
		error = e
	}
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

{#if data.length}
	<pre>{ JSON.stringify(data, null, 2) }</pre>
{:else if error}
	<p>💣 {error} 💣</p>
{/if}
