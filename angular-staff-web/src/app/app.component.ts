import { Component } from '@angular/core';
import { RoutingModule } from './routing/routing.module';
@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'uNiVus Content Management System';
  routes = RoutingModule;
}
