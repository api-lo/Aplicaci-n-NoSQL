var cors = require('cors')
require('dotenv').config();


const app= require('./server');
require('./database');

app.use(cors());
app.options('*', cors());

app.listen(app.get('port'),()=>{
    console.log('Server on port ',app.get('port'));
})