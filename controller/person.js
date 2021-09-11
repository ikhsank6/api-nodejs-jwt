var connection = require('../connection/koneksi');
var response = require('../res');

const index = (req, res) => {
    response.ok("Hello from the Node JS RESTful side!", res)
};

const users = (req, res) => {
    connection.query('SELECT * FROM person', function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok(rows, res)
        }
    });
};

const usersnested = (req, res) => {
    connection.query('SELECT person.id,person.first_name,person.last_name,thing.name_thing FROM have_thing join person on person.id=have_thing.id_person join thing on thing.id=have_thing.id_thing order by person.id', function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.oknested(rows, res)
        }
    });
};

const findUsers = (req, res) => {
    
    var user_id = req.params.user_id;

    connection.query('SELECT * FROM person where id = ?',
    [ user_id ], 
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok(rows, res)
        }
    });
};

const createUsers = (req, res) => {
    
    var first_name = req.body.first_name;
    var last_name = req.body.last_name;

    connection.query('INSERT INTO person (first_name, last_name) values (?,?)',
    [ first_name, last_name ], 
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok("Berhasil menambahkan user!", res)
        }
    });
};

const updateUsers = (req, res) => {
    
    var user_id = req.body.user_id;
    var first_name = req.body.first_name;
    var last_name = req.body.last_name;

    connection.query('UPDATE person SET first_name = ?, last_name = ? WHERE id = ?',
    [ first_name, last_name, user_id ], 
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok("Berhasil merubah user!", res)
        }
    });
};

const deleteUsers = (req, res) => {
    
    var user_id = req.body.user_id;

    connection.query('DELETE FROM person WHERE id = ?',
    [ user_id ], 
    function (error, rows, fields){
        if(error){
            console.log(error)
        } else{
            response.ok("Berhasil menghapus user!", res)
        }
    });
};

module.exports ={
    index,users,usersnested,findUsers,createUsers,updateUsers,deleteUsers,
}