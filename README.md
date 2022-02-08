# php-to-svelte-migration

The idea is to rewrite an existing php app in svelte but do it on a route-by-route basis.  One constraint is that the new pages should have the same route as the old pages.

## Possible approaches
1. proxy that determines which container to route a request to
2. apache mod_rewrite
3. php route handler calls svelte container and passes repsonse back to client

## Getting started
`make` will start a proxy on http://localhost, a legacy app (PHP) on http://localhost:81 and a next app (Svelte) on http://localhost:82.  `make dev` will spin up a local development environment for the next app (Svelte) on http://localhost:3000.


## Stopping the apps
`^c` at the terminal will stop the next app if you ran it via `make dev`.
`make clean` will stop the entire infrastructure if you ran `make`.

## Option 1: Proxy

### Pros
* No need to touch the PHP app
* Next app can be written in total isolation

### Cons
* Requires another container for the proxy
* Would need to be tested in a k8s environment to ensure it works as expected

## Option 2: mod_rewrite

### Pros

### Cons

## Option 3: php route handler calls svelte container and passes repsonse back to client

### Pros

### Cons
