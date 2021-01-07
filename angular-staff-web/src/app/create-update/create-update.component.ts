import { Component, OnInit } from '@angular/core';
import { Update } from '../update';
import { Departments } from '../departments';
import { FollowUpType } from '../follow-up-type';
import { TypeOfUpdate } from '../type-of-update';
import { HttpClient } from '@angular/common/http';
import { FormGroup, FormControl, Validators } from '@angular/forms';

@Component({
  selector: 'app-create-update',
  templateUrl: './create-update.component.html',
  styleUrls: ['./create-update.component.css'],
})
export class CreateUpdateComponent implements OnInit {
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
    coverImage:
      'https://images2.minutemediacdn.com/image/upload/c_crop,h_1194,w_2119,x_0,y_70/v1554738239/shape/mentalfloss/63484-istock-533859316.jpg?itok=iSRiZkeg',
    followUpActionType: 'link',
    followUpAction: 'http://nus.edu.sg/',
    isPosted: true,
  };

  followUpTypes: String[] = FollowUpType;
  typeOfUpdates: String[] = TypeOfUpdate;
  depts: String[] = Departments;

  constructor(private http: HttpClient) {}

  ngOnInit(): void {}

  imageSrc: string;
  myForm = new FormGroup({
    name: new FormControl('', [Validators.required, Validators.minLength(3)]),
    file: new FormControl('', [Validators.required]),
    fileSource: new FormControl('', [Validators.required]),
  });

  get f() {
    return this.myForm.controls;
  }

  onFileChange(event) {
    const reader = new FileReader();

    if (event.target.files && event.target.files.length) {
      const [file] = event.target.files;
      reader.readAsDataURL(file);

      reader.onload = () => {
        this.imageSrc = reader.result as string;

        this.myForm.patchValue({
          fileSource: reader.result,
        });
      };
    }
  }
}
