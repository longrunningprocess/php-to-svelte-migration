# php-to-svelte-migration

The idea is to rewrite an existing php app in svelte but do it on a route-by-route basis.  One constraint is that the new pages should have the same route as the old pages.

## Possible approaches

1. proxy that determines which container to route a request to
2. apache mod_rewrite
3. php route handler calls svelte container and passes repsonse back to client

## Getting started

`make` will start the legacy app (PHP) on http://localhost and the next app (Svelte) on http://localhost:3000/svelte.

## Stopping the apps

`^c` at the terminal will stop the next app and `make clean` will stop the legacy app.
