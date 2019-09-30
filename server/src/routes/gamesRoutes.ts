import { Router} from 'express';
import gamesController from '../controllers/gamesController';

class GamesRoutes {
   public router: Router = Router();

   constructor(){
    this.config();
   }

   config(): void{
       // add routes in an easy way because only have to call the methods
       this.router.get('/', gamesController.index );
   }
}

const gamesRoutes = new GamesRoutes();
export default gamesRoutes.router;