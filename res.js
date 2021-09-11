'use strict';

exports.ok = function(values, res) {
  var data = {
      'status': 200,
      'values': values
  };
  res.json(data);
  res.end();
};

exports.success = function(val,token,res){
    var data = {
        'status':200,
        'message':'success generate token',
        'token':token,
        'user':val
    };

    res.json(data);
    res.end();
};

exports.error = function(msg,res){
    var data = {
        'status':200,
        'message':msg,
    };

    res.json(data);
    res.end();
};

exports.oknested = function(values, res) {
    const hasil = values.reduce((akumulasikan,item) => {
        if(akumulasikan[item.id]){
            const group = akumulasikan[item.id];
            if(Array.isArray(group.name_thing)){
                group.name_thing.push(item.name_thing);
            }else{
                group.name_thing = [group.name_thing,item.name_thing];
            }
        }else{
            akumulasikan[item.id] = item;        
        }
        return akumulasikan;
    },{});

    var data = {
        'status': 200,
        'values': hasil
    };
    res.json(data);
    res.end();
  };