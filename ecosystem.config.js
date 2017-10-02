module.exports = {
  apps : [
    {
      name: "Core",
      script: "/opt/applications/chatz/app.js",
      max_memory_restart : "200M",
    },
    {
      name: "Website",
      script: "/opt/applications/chatz-website/server/app.js",
      max_memory_restart : "200M",
    },
    {
      name: "WebMessenger",
      script: "/opt/applications/chatz-javascript/tests/server.js",
      max_memory_restart : "200M",
    },
    {
      name: "WebCM",
      script: "/opt/applications/chatz/processes/webcm.js",
      max_memory_restart : "200M",
    },
  ],
}