module.exports = {
  apps : [
    {
      name: "Backend",
      script: "/opt/applications/chatz/app.js",
      max_memory_restart : "500M",
    },
    {
      name: "Website",
      script: "/opt/applications/chatz-website/server/app.js",
      max_memory_restart : "500M",
    },
    {
      name: "WebCM",
      script: "/opt/applications/chatz/processes/webcm.js",
      max_memory_restart : "500M",
    },
  ],
}
