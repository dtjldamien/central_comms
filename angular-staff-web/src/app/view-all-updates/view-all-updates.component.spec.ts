import { ComponentFixture, TestBed } from '@angular/core/testing';

import { ViewAllUpdatesComponent } from './view-all-updates.component';

describe('ViewAllUpdatesComponent', () => {
  let component: ViewAllUpdatesComponent;
  let fixture: ComponentFixture<ViewAllUpdatesComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ ViewAllUpdatesComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(ViewAllUpdatesComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
