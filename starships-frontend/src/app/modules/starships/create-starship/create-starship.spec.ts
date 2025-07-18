import { ComponentFixture, TestBed, fakeAsync, tick } from '@angular/core/testing';
import { CreateStarshipComponent } from './create-starship';
import { HttpClientTestingModule, HttpTestingController } from '@angular/common/http/testing';
import { ReactiveFormsModule } from '@angular/forms';
import { MatSnackBar } from '@angular/material/snack-bar';
import { Router } from '@angular/router';
import { of, throwError } from 'rxjs';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';

describe('CreateStarshipComponent', () => {
  let component: CreateStarshipComponent;
  let fixture: ComponentFixture<CreateStarshipComponent>;
  let httpMock: HttpTestingController;
  let mockSnackBar: jasmine.SpyObj<MatSnackBar>;
  let mockRouter: jasmine.SpyObj<Router>;

  beforeEach(async () => {
    mockSnackBar = jasmine.createSpyObj('MatSnackBar', ['open']);
    mockRouter = jasmine.createSpyObj('Router', ['navigate']);

    await TestBed.configureTestingModule({
      imports: [
        CreateStarshipComponent, // ✅ standalone component
        HttpClientTestingModule,
        BrowserAnimationsModule
      ],
      providers: [
        { provide: MatSnackBar, useValue: mockSnackBar },
        { provide: Router, useValue: mockRouter }
      ]
    }).compileComponents();

    fixture = TestBed.createComponent(CreateStarshipComponent);
    component = fixture.componentInstance;
    httpMock = TestBed.inject(HttpTestingController);
    fixture.detectChanges();
  });

  it('should create the component', () => {
    expect(component).toBeTruthy();
  });

  it('should have form with required fields', () => {
    expect(component.form).toBeDefined();
    expect(component.form.get('name')).toBeTruthy();
    expect(component.form.get('model')).toBeTruthy();
  });

  it('should not submit if form is invalid', () => {
    component.form.patchValue({ name: '', model: '' }); // both required
    component.onSubmit();
    expect(mockSnackBar.open).not.toHaveBeenCalled();
    expect(mockRouter.navigate).not.toHaveBeenCalled();
  });

  it('should submit form and navigate on success', fakeAsync(() => {
    const formValue = {
      name: 'X-Wing',
      model: 'T-65',
      manufacturer: '',
      costInCredits: '',
      length: '',
      maxAtmospheringSpeed: '',
      consumables: '',
      starshipClass: '',
      hyperdriveRating: '',
      crew: '',
      passengers: '',
      mglt: '',
      cargoCapacity: ''
    };

    component.form.setValue(formValue);
    component.onSubmit();

    const req = httpMock.expectOne('http://localhost:5198/api/StarShip/Create');

    expect(req.request.method).toBe('POST');
    req.flush({}); // mock success response
    tick();

    expect(mockSnackBar.open).toHaveBeenCalledWith('Starship created successfully!', 'Close', {
      duration: 3000,
      panelClass: ['snackbar-success']
    });
    expect(mockRouter.navigate).toHaveBeenCalledWith(['/starships']);
  }));

  it('should show error if creation fails', fakeAsync(() => {
    const formValue = {
      name: 'X-Wing',
      model: 'T-65',
      manufacturer: '',
      costInCredits: '',
      length: '',
      maxAtmospheringSpeed: '',
      consumables: '',
      starshipClass: '',
      hyperdriveRating: '',
      crew: '',
      passengers: '',
      mglt: '',
      cargoCapacity: ''
    };

    component.form.setValue(formValue);
    component.onSubmit();

    const req = httpMock.expectOne('http://localhost:5198/api/StarShip/Create');

    req.flush({}, { status: 500, statusText: 'Server Error' });
    tick();

    expect(mockSnackBar.open).toHaveBeenCalledWith('Creation failed. Try again.', 'Close', {
      duration: 3000,
      panelClass: ['snackbar-error']
    });
  }));

  afterEach(() => {
    httpMock.verify();
  });
});
