module.exports.runChat = function (application, req, res) {
    var dataForm = req.body;
    req.assert('apelido', 'O apelido é obrigatório.').notEmpty();
    req.assert('apelido', 'O apelido deve ter entre 3 e 15 caracteres.').len(3, 15);

    var errors = req.validationErrors();
    if (errors) {
        res.render('index', { validation: errors });
        return;
    }

    console.log(dataForm);
    res.render('chat');
}