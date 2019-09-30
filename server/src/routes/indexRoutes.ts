import { Router} from 'express';
import { indexController} from '../controllers/indexController';

class IndexRoutes {
   public router: Router = Router();

   constructor(){
    this.config();
   }

   config(): void{
       // add routes in an easy way because only have to call the controller and use the methods
       this.router.get('/', indexController.index);
   }
}

const indexRoutes = new IndexRoutes();
export default indexRoutes.router;