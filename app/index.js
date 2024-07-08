const http = require('http');
const fs = require('fs');

const PORT = 8080;
let configPath;

// Use NODE_ENV to determine which config file to load
if (process.env.NODE_ENV === 'production') {
  configPath = `${__dirname}/config.prod.json`;
} else if (process.env.NODE_ENV === 'development') {
  configPath = `${__dirname}/config.dev.json`;
} else {
  configPath = `${__dirname}/config.json`; // Fallback to default config
}

const config = JSON.parse(fs.readFileSync(configPath));

const server = http.createServer((req, res) => {
  res.setHeader('Content-Type', 'text/html');
  res.writeHead(200, { 'Content-Type': 'text/plain' });
  res.end(`${config.message}`);
});

server.listen(PORT);
console.log(`Server listening on ${PORT}`);
