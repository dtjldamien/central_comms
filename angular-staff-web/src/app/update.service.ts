import { Injectable } from '@angular/core';
import { Update } from './update';

@Injectable({
  providedIn: 'root'
})
export class UpdateService {

  constructor() { }

  getHeroes(): Update[] {
    var updates: Update[];
    return updates;
  }
}
