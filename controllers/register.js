
const handleRegister = (req, res, db, bcrypt) => {
 const { email, name, password } = req.body;
 if (!email || !name || !password) {
   return res.status(400).json('Enter valid data');
 }
 const hash = bcrypt.hashSync(password);
   db.transaction(trx => {
       trx.insert({
         hash: hash,
         email: email
       })
       .into('login')
       .returning('email')
       .then(loginEmail => {
         return trx('users')
             .returning('*')
             .insert({
               email: loginEmail[0],
               name: name,
               joined: new Date()
             })
             .then(user => {
               console.log('I am here');
               res.json(user[0]);
             })
       })
       .then(trx.commit)
       .catch(trx.rollback)
     })
   .catch(err => {
       console.log(err);
       res.status(400).json('Unable to register')
   })
}

module.exports = {
  handleRegister: handleRegister
};
