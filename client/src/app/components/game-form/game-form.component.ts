import { Component, OnInit, HostBinding } from '@angular/core';
import {Router, ActivatedRoute} from '@angular/router'

import { Game } from 'src/app/models/Game';
import {GamesService} from '../../services/games.service';

@Component({
  selector: 'app-game-form',
  templateUrl: './game-form.component.html',
  styleUrls: ['./game-form.component.css']
})
export class GameFormComponent implements OnInit {

  //this instruction add "div row" inside the component
  @HostBinding('class') classes = 'row';

  game: Game = {
    id: 0,
    title: '',
    description: '',
    image: '',
    created_at: new Date()
  };

  edit: boolean = false;

  constructor(private gamesService: GamesService, private route: Router, private activeRouete: ActivatedRoute) { }

  ngOnInit() {
    const params = this.activeRouete.snapshot.params;
    if(params.id){
      this.gamesService.getGame(params.id).subscribe(
        res => {
          console.log(res)
          this.game = res;
          this.edit = true;
        },
        err => console.error(err)
      );
    }
    console.log(params);
  }

  saveNewGame(){
    // delete the variables of the entity game
    delete this.game.created_at;
    delete this.game.id;

    this.gamesService.saveGame(this.game)
    .subscribe(
      res => {
        console.log(res);
        this.route.navigate(['/games']);
      },
      err => console.error(err)
    )
  }

  updateGame(){
    //delete the varaible from the entity game
    delete this.game.created_at;
    this.gamesService.updateGame(this.game.id, this.game).subscribe(
      res => {
        console.log(res);
        this.route.navigate(['/games']);
      },
      err => console.log(err)
    );

  }

}
