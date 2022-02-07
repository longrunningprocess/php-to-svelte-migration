<script>
import { session } from '$app/stores'
</script>

<svelte:head>
	<title>Shiny</title>
</svelte:head>

<h1>✨ Shiny ✨ (next app)</h1>

<h2>session</h2>
<pre>{ JSON.stringify($session, null, 2) }</pre>
