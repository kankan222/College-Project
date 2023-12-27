const express = require('express');
const mysql = require('mysql');
const bodyParser = require('body-parser');
const cors = require('cors');
const dotenv = require('dotenv');

const app = express();
const port = 7050;

app.use(cors());
app.use(express.json());
app.use(express.urlencoded({ extended: false}));


// Database connection configuration
const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'collegeData',
    multipleStatements: true
});

// Connect to the database
connection.connect((err) => {
    if (err) throw err;
    console.log('Connected to MySQL database');
});

// Middleware for parsing request bodies
app.use(bodyParser.json());

// Define your app's routes and logic here

// Start the server
app.listen(port, () => {
    console.log(`Server listening on port ${port}`);
});
