module.exports = {
  apps : [
    {
      name: "Backend",
      script: "$AYRO_HOME/ayro/app.js",
      max_memory_restart : "500M",
    },
    {
      name: "Webcm",
      script: "$AYRO_HOME/ayro-webcm/app.js",
      max_memory_restart : "500M",
    },
    {
      name: "Website",
      script: "$AYRO_HOME/ayro-website/server/app.js",
      max_memory_restart : "500M",
    },
  ],
}
