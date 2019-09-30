import express, {Application} from 'express';
import morgan from 'morgan';
import cors from 'cors';

import indexRoutes from './routes/indexRoutes';
import gamesRoutes from './routes/gamesRoutes';

class Server {

    public app: Application;

    constructor(){
        this.app = express();
        this.config();
        this.routes();
    }

    config() : void{
        this.app.set('port', process.env.PORT || 3000);
        this.app.use(morgan('dev'));
        //To do requests in differents ports
        this.app.use(cors());
        // Accept Json format
        this.app.use(express.json());
        // To send data from a form
        this.app.use(express.urlencoded({extended: false}));
    }

    routes(): void{
        //In this place define the routes of own application
        this.app.use('/', indexRoutes);
        this.app.use('/api/games', gamesRoutes);
    }

    start(): void {
        this.app.listen(this.app.get('port'), () => {
            console.log('Server on port', this.app.get('port'));
        });
    }
}

const server = new Server();
server.start();