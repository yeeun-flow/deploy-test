const express = require('express');
const app = express();
const port = 8080;

app.get('/', (req, res) => {
  res.send(`
    <h1>Hello from AWS CodePipeline and Elastic Beanstalk (Node.js)!</h1>
    <p>Deployment successful!</p>
    <p>Current Time: ${new Date().toLocaleString()}</p>
  `);
});

app.listen(port, () => {
  console.log(`Server running at http://localhost:${port}`);
});
