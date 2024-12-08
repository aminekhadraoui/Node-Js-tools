
# Express MySQL API Generator

A **Pascal-based utility** to generate a basic **Express.js API** with CRUD operations for a MySQL database. The output JavaScript code is written to `express.txt`.

---

## 🚀 Features

- **Express.js Boilerplate**: Generates server setup code with CORS and static file serving.
- **MySQL Integration**: Supports connection configuration and basic CRUD routes.
- **Dynamic Configuration**: Prompts user input for database credentials and port number.
- **Automated Output**: Saves the generated API code to `express.txt`.

---

## 📂 Output Structure

The generated API includes:  

- **Database Connection**: Configurable `host`, `user`, `password`, and `database`.  
- **CRUD Routes**: 
  - `POST /add_user` – Add a new record.  
  - `GET /students` – Fetch all records.  
  - `GET /get_student/:id` – Fetch a record by ID.  
  - `POST /edit_user/:id` – Update a record by ID.  
  - `DELETE /delete/:id` – Delete a record by ID.  

---

## 🛠️ How to Use

1. **Compile and Run** the Pascal program.
2. **Provide Inputs**:  
   - Port number: e.g., `3000`  
   - Host: e.g., `localhost`  
   - User: e.g., `root`  
   - Password: e.g., `mypassword`  
   - Database name: e.g., `students`  
3. **Generated Code**: Find the output in `express.txt`.

---

## ✍️ Example

### Input:
```plaintext
Port number: 3000
Name of host: localhost
Name of user: root
Name of password: mypassword
Name of database: students
```

### Output in `express.txt`:
```javascript
const express = require("express");
const mysql = require("mysql");
const cors = require("cors");
const path = require("path");

const app = express();
app.use(cors());
app.use(express.static(path.join(__dirname, "public")));
app.use(express.json());

const port = 3000;

const db = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "mypassword",
  database: "students",
});

// CRUD routes setup here...

app.listen(port, () => {
  console.log(`Listening on port ${port}`);
});
```

---

## 🧩 Future Enhancements

- **Dynamic Table Names**: Allow user to input table name for CRUD operations.
- **Error Handling**: Add more robust error messages in generated code.
- **Code Optimization**: Minify and organize output for large-scale APIs.

--- 
