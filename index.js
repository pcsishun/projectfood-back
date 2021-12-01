import express from "express";
import mysql from 'mysql';
import bodyParser from 'body-parser';



const app = express()
const port = 3030

 

app.use(bodyParser.urlencoded({ extended: true}));
app.use(bodyParser.json());

app.get('/menulist', (req, res) => {

    const pageSelection = req.query.pageRunning  
    
    const conn = mysql.createConnection({
        host:'localhost',
        user:'root',
        database:'test',
        password:''
    })

    conn.connect(
        function(err){
            if (err){
                console.log(err.message)
            }
            else{
                conn.query("select *  from menulist where page_running = ? ",[pageSelection],function(err, result) {
                    if(err){
                        console.log(err.message)
                    }else{
                        res.send(result)
                    }
                })

            }
        }
    )

  })
  

  app.get('/fullmenu', (req, res) => {

    const pageSelection = req.query.pageRunning  
    
    const conn = mysql.createConnection({
        host:'localhost',
        user:'root',
        database:'test',
        password:''
    })

    conn.connect(
        function(err){
            if (err){
                console.log(err.message)
            }
            else{
                conn.query("select *  from menulist",function(err, result) {
                    if(err){
                        console.log(err.message)
                    }else{
                        res.send(result)
                    }
                })

            }
        }
    )

  })

  app.post('/auth', function(req,res){
      const email = req.body.email;
      const password = req.body.password;

    //   console.log(email, password)

      const conn = mysql.createConnection({
        host:'localhost',
        user:'root',
        database:'test',
        password:''
    })


      if(email && password){
          conn.query('select * from user where email = ? and password = ?',[email, password], function(err,result){
              if(result.length > 0){
                  res.send(result)
              }else{
                  res.send("invalid email or password")
              }
          });
      }
      else{
          res.send("invalid email or password")
      }
  })

  app.listen(port, () => {
    console.log(`app listening at http://localhost:${port}`)
  })