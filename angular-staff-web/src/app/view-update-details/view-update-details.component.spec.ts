import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ViewUpdateDetailsComponent } from './view-update-details.component';

describe('ViewUpdateDetailsComponent', () => {
  let component: ViewUpdateDetailsComponent;
  let fixture: ComponentFixture<ViewUpdateDetailsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ViewUpdateDetailsComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ViewUpdateDetailsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
