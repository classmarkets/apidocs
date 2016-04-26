var fs = require('fs');
var path = require('path');
var nav = fs.readFileSync(process.argv[2], "utf8");

process.stdout.write(
  fs.readFileSync(process.argv[3], "utf8").
  replace(/<nav>(.*?)<\/nav>/, nav)
);
