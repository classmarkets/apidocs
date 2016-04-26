/*
 * This script does the equivalent of `aglio --theme olio --theme-template triple -i - -o -`,
 * but expects a json encoded blueprint ast on stdin.
 *
 * aglio comes with an outdated blueprint parser that doesn't parse everything
 * correctly. We use drafter to do it instead and this script for rendering.
 */
var theme = require('aglio-theme-olio');

process.stdin.resume()
process.stdin.setEncoding("utf8")

var json = "";

process.stdin.on('data', function(chunk) {
  json += chunk;
})

process.stdin.on('end', function(chunk) {
  var ast = JSON.parse(json);

  var options = {
    themeTemplate: "triple",
    themeVariables: "default",
    themeFullWidth: false,
    themeCondenseNav: true,
    filterInput: false,
    includePath: __dirname,
  };

  theme.render(ast.ast, options, function(err, html) {
    if (err) {
      console.log(err)
      process.exit(1)
    } else {
      process.stdout.write(html)
    }
  });
});
