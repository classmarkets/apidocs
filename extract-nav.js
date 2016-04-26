var fs = require('fs');
var path = require('path');
var fname = process.argv[2];

process.stdout.write(
  fs.readFileSync(fname, "utf8").
    match(/<nav>(.*?)<\/nav>/)[1].
    replace(/href="#/g, 'href="'+path.basename(fname)+'#').
    replace(/<p .*?<\/p>/, "")
);
