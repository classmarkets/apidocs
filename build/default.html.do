redo-ifchange ../dist/$2.apib ../render.js ../theme.less

# aglio comes with an outdated blueprint parser that doesn't parse everything correctly, so we use drafter to do it.
drafter -f json -t ast < ../dist/$2.apib | node ../render.js
