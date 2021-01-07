import { Component, OnInit } from '@angular/core';
import { Update } from '../update';

@Component({
  selector: 'app-view-update-details',
  templateUrl: './view-update-details.component.html',
  styleUrls: ['./view-update-details.component.css']
})
export class ViewUpdateDetailsComponent implements OnInit {
  newUpdate: Update = {
    id: 1,
    title: 'Update XYZ',
    department: 'OHS',
    recipients: 'All Undergraduates',
    typeOfUpdate: 'typeOfUpdate',
    summary: 'Lorem ipsum for summary',
    message: 'Lorem ipsum for message',
    scheduleMessage: new Date(),
    tags: ['tag A', 'tag B'],
    coverImage: 'https://images2.minutemediacdn.com/image/upload/c_crop,h_1194,w_2119,x_0,y_70/v1554738239/shape/mentalfloss/63484-istock-533859316.jpg?itok=iSRiZkeg',
    followUpActionType: 'link',
    followUpAction: 'http://nus.edu.sg/',
    isPosted: true
  };

  constructor() { }

  ngOnInit(): void {
  }
}
