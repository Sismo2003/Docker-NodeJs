import { WebSocketServer } from 'ws';

const wss = new WebSocketServer({ port: 3005 });
wss.on('connection', (ws) => {
    console.log('Client connected');
    ws.on('error', console.error);

    ws.on('message', (data) => {
        console.log("Data: " + data);
    });

    ws.send('something');

    ws.on('close', () => {
        console.log('Client disconnected');
    });
});