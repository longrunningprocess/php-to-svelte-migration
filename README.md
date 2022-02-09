# php-to-svelte-migration

The idea is to rewrite an existing php app in svelte but do it on a route-by-route basis.  One constraint is that the new pages should have the same route as the old pages.

## Possible approaches
1. proxy
2. apache mod_rewrite
3. php route handler calls svelte container and passes repsonse back to client

## Getting started
`make` will start a proxy on http://localhost, a legacy app (PHP) on http://localhost:81 and a next app (Svelte) on http://localhost:82.  `make dev` will spin up a local development environment for the next app (Svelte) on http://localhost:3000.


## Stopping the apps
`^c` at the terminal will stop the next app if you ran it via `make dev`.
`make clean` will stop the entire infrastructure if you ran `make`.

## Option 1: Proxy

The idea is to add two more containers, one for a proxy and a another for the next app.  The proxy will receive all incoming requests and have rules to determine whether to route a request the legacy app or the next app.  This will all be transparent to the end user, i.e., the URL is not changed at all.

> REMINDER: existing client SPA's _might_ have routes that will need to be disabled.

### Pros
* No need to touch the PHP app
* The next app can be written in total isolation
* Routes will look exactly the same as they did in the legacy app
* no CORS challenges due to same origin

### Cons
* Requires additional containers
* Would need to be tested in a k8s environment to ensure proxying works as expected

## Option 2: mod_rewrite

The idea is to build the next app as a bundled SPA and drop its dist into a different directy on the existing app.  Rules will then be written into the web server, i.e., mod_rewrite, that will serve the approprite resources from the appropriate directory, i.e., legacy requests from the legacy folder and migrated requests from the next app's folder.

> REMINDER: existing client SPA's _might_ have routes that will need to be disabled.

### Pros
* Operates within the same container as the existing PHP app

### Cons
* This will not take advantage of SSR, static prerendering or prefetching since the entire next app will be bundled and delivered to the client.
* It will be hard to eliminate _all_ remnants of the legacy app as development proceeds or nears its completion, e.g., folder structures might remain the same to facilitate the transition of both apps living in the same dist space.

## Option 3: php route handler calls svelte container and passes repsonse back to client

I'm not sure this is even a viable option since _some_ of the existing routing of the legacy app is still in the client and would already have been bundled and delivered to the client.

### Pros

### Cons
