'use strict';

const router = (app) => {
    let person = require('../controller/person');
    let auth = require('../controller/auth');
    let authentication = require('../middleware/authentication');

    app.route('/')
        .get(person.index);

    // route grouping
    app.prefix('/api/v1', (authenticate) => {

        authenticate.route('/auth/register')
            .post(auth.registrasi);

        authenticate.route('/auth/login')
            .post(auth.login);

        authenticate.route('/users')
            .get(authentication(),person.users);
        
        authenticate.route('/usersnested')
            .get(authentication(),person.usersnested);
    
        authenticate.route('/users/:user_id')
            .get(authentication(),person.findUsers);
    
        authenticate.route('/users')
            .post(authentication(),person.createUsers);
    
        authenticate.route('/users')
            .put(authentication(),person.updateUsers);
        
        authenticate.route('/users')
            .delete(authentication(),person.deleteUsers);
            
    });

};

module.exports = router;