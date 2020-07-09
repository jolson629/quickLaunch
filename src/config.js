const inquirer = require("inquirer");
const { exec } = require('child_process');
const fs = require("fs");

inquirer
  .prompt([
  ])
  .then(answers => {
    // index.html file
    let originalHTML = fs.readFileSync("./template/template.html", "utf8");
    const indexHTML = originalHTML
      .replace("{title}", process.env.title)
      .replace("{header}", process.env.title)
      .replace("{description}", process.env.description)
      .replace("{favicon}", process.env.favicon)
      .replace("{logo}", process.env.logo);
    fs.writeFileSync("src/index.html", indexHTML);

    // index.js file
    let originalJS = fs.readFileSync("./template/template.js", "utf8");
    const indexJS = originalJS
      .replace("{url}", process.env.url)
      .replace("{accessToken}", process.env.token);
    fs.writeFileSync("src/index.js", indexJS);

    // app.js file
    let originalAppJS = fs.readFileSync("./template/template_app.js", "utf8");
    const appJS = originalAppJS
      .replace("{db_url}", process.env.db_url)
      .replace("{db_name}", process.env.db_name)

    if (process.env.db_url === 'localhost') {
      console.log("Starting Mongo in Docker")
      exec('docker run -d -p 27017:27017 mongo')
    }

    fs.writeFileSync("src/app.js", appJS);
  });
