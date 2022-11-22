const fs = require("fs");
const port = 8001
const express = require('express')

const server = express();
const bodyparser = require("body-parser");
const db = require("./db");

server.get('/', (req, res) => {
  res.send('Hello World!')
})

server.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})