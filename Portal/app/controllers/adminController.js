module.exports.formulario_add_noticia = function (application, req, res) {
    res.render("admin/form_add_noticia", { validacao: {}, noticia: {} });
}

module.exports.noticias_salvar = function (application, req, res) {
    var noticia = req.body;

    req.assert('titulo', 'O título não pode ser vazio').notEmpty();
    req.assert('resumo', 'O resumo não pode ser vazio').notEmpty();
    req.assert('resumo', 'O resumo eve ter entre 10 e 100 caracteres').len(10, 100);
    req.assert('autor', 'O autor não pode ser vazio').notEmpty();
    req.assert('data_noticia', 'A data a noticia não pode ser vazio').notEmpty();

    function isValidDate(value) {
        if (!value.match(/^\d{4}-\d{2}-\d{2}$/)) return false;

        const date = new Date(value);
        if (!date.getTime()) return false;
        return date.toISOString().slice(0, 10) === value;
    }

    req.assert('data_noticia').custom(isValidDate).withMessage('A data é inválida');
    req.assert('noticia', 'A noticia não pode ser vazio').notEmpty();

    var errors = req.validationErrors();

    if (errors) {
        res.render('admin/form_add_noticia', { validacao: errors, noticia: noticia });
        return;
    }

    var connection = application.config.dbConnection();
    var noticiasModel = new application.app.models.NoticiasDAO(connection);

    noticiasModel.setNoticia(noticia, function (error, result) {
        res.redirect('/noticias');
    });
}