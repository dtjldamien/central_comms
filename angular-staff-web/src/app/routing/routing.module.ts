import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { Routes, RouterModule } from '@angular/router';
import { CreateUpdateComponent } from '../create-update/create-update.component'
import { ViewAllUpdatesComponent } from '../view-all-updates/view-all-updates.component'
import { ViewUpdateDetailsComponent } from '../view-update-details/view-update-details.component'

const routes: Routes = [
  { path  : '', component: ViewAllUpdatesComponent},
  { path  : 'create-update', component: CreateUpdateComponent},
  { path  : 'view-update-details', component: ViewUpdateDetailsComponent},
];

@NgModule({
  declarations: [],
  imports: [
    CommonModule,
    RouterModule.forRoot(routes)
  ],
  exports: [
    RouterModule
  ]
})
export class RoutingModule { }
