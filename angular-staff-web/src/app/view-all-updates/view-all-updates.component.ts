import { Component, OnInit } from '@angular/core';
import { UPDATES } from '../mock-updates';

@Component({
  selector: 'app-view-all-updates',
  templateUrl: './view-all-updates.component.html',
  styleUrls: ['./view-all-updates.component.css']
})
export class ViewAllUpdatesComponent implements OnInit {
  updates = UPDATES;

  constructor() { }

  ngOnInit(): void {
  }

}
