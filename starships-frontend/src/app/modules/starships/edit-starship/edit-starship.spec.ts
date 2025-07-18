import { ComponentFixture, TestBed, fakeAsync, tick } from '@angular/core/testing';
import { EditStarshipComponent } from './edit-starship';
import { MAT_DIALOG_DATA, MatDialogRef } from '@angular/material/dialog';
import { ReactiveFormsModule, FormBuilder } from '@angular/forms';
import { HttpClientTestingModule, HttpTestingController } from '@angular/common/http/testing';
import { MatSnackBarModule } from '@angular/material/snack-bar';
import { environment } from '../../../../environments/environment';
import { By } from '@angular/platform-browser';

describe('EditStarshipComponent', () => {
  let component: EditStarshipComponent;
  let fixture: ComponentFixture<EditStarshipComponent>;
  let httpMock: HttpTestingController;
  let dialogRefSpy: jasmine.SpyObj<MatDialogRef<EditStarshipComponent>>;

  const mockData = {
    id: '123',
    name: 'X-Wing',
    model: 'T-65B',
    manufacturer: 'Incom Corporation',
    costInCredits: '149999',
    length: '12.5',
    maxAtmospheringSpeed: '1050',
    consumables: '1 week',
    starshipClass: 'Starfighter',
    hyperdriveRating: '1.0',
    crew: '1',
    passengers: '0',
    mglt: '100',
    cargoCapacity: '110',
    pilots: ['pilot1', 'pilot2'],
    films: ['film1', 'film2']
  };

  beforeEach(async () => {
    dialogRefSpy = jasmine.createSpyObj('MatDialogRef', ['close']);

    await TestBed.configureTestingModule({
      imports: [
        EditStarshipComponent,
        ReactiveFormsModule,
        HttpClientTestingModule,
        MatSnackBarModule
      ],
      providers: [
        FormBuilder,
        { provide: MAT_DIALOG_DATA, useValue: mockData },
        { provide: MatDialogRef, useValue: dialogRefSpy }
      ]
    }).compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(EditStarshipComponent);
    component = fixture.componentInstance;
    httpMock = TestBed.inject(HttpTestingController);
    fixture.detectChanges();
  });

  afterEach(() => {
    httpMock.verify();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
    expect(component.form).toBeDefined();
  });

  it('should initialize form with injected data', () => {
    expect(component.form.value.name).toBe(mockData.name);
    expect(component.form.value.model).toBe(mockData.model);
    expect(component.form.value.manufacturer).toBe(mockData.manufacturer);
  });

  it('should not submit if form is invalid', () => {
  component.form.reset(); // ensure full invalid state
  component.onSubmit();

  // expect no HTTP request to be made
  httpMock.expectNone(`${environment.apiUrl}/StarShip/${mockData.id}`);
});


  it('should show error on failed update', fakeAsync(() => {
    component.onSubmit();

    const req = httpMock.expectOne(`${environment.apiUrl}/StarShip/${mockData.id}`);
    expect(req.request.method).toBe('PUT');
    req.flush('Error', { status: 500, statusText: 'Server Error' });

    tick(3000); // for snackbar
    expect(dialogRefSpy.close).not.toHaveBeenCalled();
  }));

  it('should submit valid form and close dialog', fakeAsync(() => {
    component.onSubmit();

    const req = httpMock.expectOne(`${environment.apiUrl}/StarShip/${mockData.id}`);
    expect(req.request.method).toBe('PUT');
    req.flush({});

    tick(3000); // for snackbar
    expect(dialogRefSpy.close).toHaveBeenCalledWith(true);
  }));
});
