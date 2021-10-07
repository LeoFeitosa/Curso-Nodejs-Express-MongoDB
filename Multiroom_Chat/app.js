var app = require('./config/server');

var server = app.listen(3000, function () {
    console.log('Server On');
});

var io = require('socket.io')(server);
app.set('io', io);

/*criar conexao por websocket*/
io.on('connection', function (socket) {
    console.log('User conected');

    socket.on('disconnect', function () {
        console.log('User disconected');
    });

    socket.on('msgForServer', function (data) {
        /*dialogo */
        socket.emit(
            'msgForClient',
            { apelido: data.apelido, msg: data.msg }
        );

        socket.broadcast.emit(
            'msgForClient',
            { apelido: data.apelido, msg: data.msg }
        );

        /*participantes */
        if (parseInt(data.apelido_atualizado) == 0) {
            socket.emit(
                'participantsClient',
                { apelido: data.apelido }
            );

            socket.broadcast.emit(
                'participantsClient',
                { apelido: data.apelido }
            );
        }
    });
});