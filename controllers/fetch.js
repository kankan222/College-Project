const query = 'SELECT * FROM admission_forms';
connection.query(query, (err, results) => {
    if (err) throw err;
    console.log(results); // Array of admission form objects
});
