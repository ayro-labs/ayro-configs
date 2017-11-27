module.exports = {
  apps : [
    {
      name: "Backend",
      script: "/opt/applications/ayro/app.js",
      max_memory_restart : "500M",
    },
    {
      name: "Website",
      script: "/opt/applications/ayro-website/server/app.js",
      max_memory_restart : "500M",
    },
    {
      name: "WebCM",
      script: "/opt/applications/ayro-webcm/app.js",
      max_memory_restart : "500M",
    },
  ],
}
