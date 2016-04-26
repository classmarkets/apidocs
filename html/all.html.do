redo-ifchange ../apiary.apib
drafter -f json -t ast < ../apiary.apib | node ../render.js
#../node_modules/aglio/bin/aglio.js --theme-template triple -i ../apiary.apib -o -
