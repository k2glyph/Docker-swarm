const express = require("express");
const app = express();
const port = 3000;
const version=2;
app.use('/',  express.static('public'))
app.get('/health', function(req, res){
    if(version==1) {
        res.status(201);
    }else {
        res.status(202);
    }
    res.send("App is up and running");
});
app.listen(port, ()=> console.log(`Server is running on Port ${port}`));