program project1;
uses
  crt,
  Windows,   // for constant SW_NORMAL
  ShellApi;  // for function ShellExecute
type
  tab=array[1..1000] of string;
var
  rep:char;
  nameroot:string;
  f4,f3,f,f2:text;
  t:tab;
  nomdb,nomtable: AnsiString;
  x:char;
procedure express (var t:tab;var f4:text);
var
  i,j,k,numbernav,numberdropdown:integer;
  menudrop,namedropdown,navbarcolor,dropbtn,dropdowncontent:string;
  imageslider:integer;
  namehref,navbarnames,titlenames,paragraphe,titlecolorh1,paracolor,imageslidername:string;
  rep:string;
  port,host,user,password,database:string;
begin
  TextColor(2);
 writeln('port number:');
readln(port);
//DB
writeln('name of host');
readln(host);
 writeln('name of user');
readln(user);
 writeln('name of password');
readln(password);
writeln('name of database');
readln(database);
//end Db
    rep:='r';

  rewrite(f4);
  for k:=1 to 79 do
  begin

  t[1] :='const express = require("express");';
  t[2] :='const mysql = require("mysql");';
  t[3] :='const cors = require("cors");';
  t[4] :='const path = require("path");';
  t[5] :='const app = express(); ';
  t[6] :='//path.resolve()';
  t[7] :='app.use(cors());';
  t[8] :='app.use(express.static(path.join(__dirname, "public")));';

  t[9] :='app.use(express.json());';
     //port
  t[10] :='const port = '+port+';';


  t[11] :='const db = mysql.createConnection({';
    t[12] :='host: "'+host+'", ';
    t[13] := 'user: "'+user+'",';
    t[14] := 'password: "'+password+'",';
    t[15] := 'database: "'+database+'",';
    t[16] :='}); ';
    t[17] :='// Check MySQL connection ';
    t[18] :='db.connect((err) => { ';
      t[19] := 'if (err) { ';
        t[20] := 'console.error("Error connecting to MySQL:", err);  ';
        t[21] :='return;' ;
        t[22] := '} '   ;
        t[23] :='console.log("Connected to MySQL");';
        t[24] :='});';


        t[25] :='app.post("/add_user", (req, res) => { ';
          t[26] :='const sql =   ';
          t[27] :='"INSERT INTO student_details (`name`,`email`,`age`,`gender`) VALUES (?, ?, ?, ?)"; ';
          t[28] :='const values = [req.body.name, req.body.email, req.body.age, req.body.gender];    ';
          t[29] :='db.query(sql, values, (err, result) => { ';
            t[30] :='if (err) ';
            t[31] :='return res.json({ message: "Something unexpected has occured" + err });';
            t[32] :='return res.json({ success: "Student added successfully" });';
            t[33] :='});  ';
            t[34] :='});  ';

            t[35] :='app.get("/students", (req, res) => { ';
              t[36] :=' const sql = "SELECT i] := FROM student_details"; ';
              t[37] :=  'db.query(sql, (err, result) => {  ';
                t[38] :=' if (err) res.json({ message: "Server error" });';
                t[39] := 'return res.json(result);  ';
                t[40] :='}); ';
                t[41] :='});';

                t[42] :='app.get("/get_student/:id", (req, res) => { ';
                  t[43] :='const id = req.params.id;';
                  t[44] := 'const sql = "SELECT i] := FROM student_details WHERE `id`= ?"; ';
                  t[45] := 'db.query(sql, [id], (err, result) => { ';
                    t[46] := 'if (err) res.json({ message: "Server error" }); ';
                    t[47] := 'return res.json(result); ';
                    t[48] :='});';
                    t[49] :='});';

                    t[50] :='app.post("/edit_user/:id", (req, res) => {  ';
                      t[51] :='const id = req.params.id; ';
                      t[52] :='const sql =   ';
                      t[53] := '"UPDATE student_details SET `name`=?, `email`=?, `age`=?, `gender`=? WHERE id=?"; ';
                      t[54] := 'const values = [  ';
                        t[55] :=' req.body.name,  ';
                        t[56] := ' req.body.email, ';
                        t[57] := ' req.body.age,  ';
                        t[58] :=' req.body.gender, ';
                        t[59] := 'id, ';
                        t[60] :=']; ';
                        t[61] :='db.query(sql, values, (err, result) => {  ';
                          t[62] :='if (err) ';
                          t[63] := ' return res.json({ message: "Something unexpected has occured" + err }); ';
                          t[64] :=' return res.json({ success: "Student updated successfully" });  ';
                          t[65] := '});  ';
                          t[66] :='}); ';

                          t[67] :='app.delete("/delete/:id", (req, res) => {  ';
                            t[68] :=' const id = req.params.id;   ';
                            t[69] := ' const sql = "DELETE FROM student_details WHERE id=?";  ';
                            t[70] :=' const values = [id];  ';
                            t[71] :=' db.query(sql, values, (err, result) => {  ';
                              t[72] := '   if (err) ';
                              t[73] := ' return res.json({ message: "Something unexpected has occured" + err }); ';
                              t[74] := 'return res.json({ success: "Student updated successfully" });';
                              t[75] := '}); ';
                              t[76] :='});';

                              t[77] :='app.listen(port, () => {    ';
                                t[78] := ' console.log(`listening on port ${port} `); ';
                                t[79] :='}); ';


  //

  writeln(f4,t[k]);

  end;
  TextColor(8);
  writeln('end of create');
   end;
  begin
   assign(f4,'.\express.txt');
  repeat
  express(t,f4);
  until rep='0';

  end.
