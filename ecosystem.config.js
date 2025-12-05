const path = require('path');

module.exports = {
  apps: [
    {
      name: 'CobPanel Backend',
      script: 'node',
      args: '-r bytenode dist/server.jsc',
      cwd: path.resolve(__dirname, 'backend'),
      instances: 1,
      exec_mode: 'fork',
      watch: false,
      env: {
        NODE_ENV: 'production'
      }
    },
    {
      name: 'CobPanel Frontend',
      script: 'npm',
      args: 'run start:prod',
      cwd: path.resolve(__dirname, 'frontend'),
      instances: 1,
      exec_mode: 'fork',
      watch: false,
      env: {
        NODE_ENV: 'production'
      }
    }
  ]
};
