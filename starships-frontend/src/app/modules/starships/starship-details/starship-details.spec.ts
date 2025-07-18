import { ComponentFixture, TestBed } from '@angular/core/testing';
import { StarshipDetails } from './starship-details';
import { MAT_DIALOG_DATA, MatDialogModule } from '@angular/material/dialog';
import { By } from '@angular/platform-browser';

describe('StarshipDetails', () => {
  let component: StarshipDetails;
  let fixture: ComponentFixture<StarshipDetails>;

  const mockStarship = {
    name: 'X-Wing',
    model: 'T-65B',
    manufacturer: 'Incom Corporation',
    crew: '1',
    passengers: '0',
    cargoCapacity: '110',
    length: '12.5',
    maxAtmospheringSpeed: '1050',
    starshipClass: 'Starfighter',
    hyperdriveRating: '1.0',
    consumables: '1 week',
    costInCredits: '149999',
    mglt: '100',
    pilots: ['pilot1', 'pilot2'],
    films: ['film1']
  };

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [StarshipDetails, MatDialogModule],
      providers: [
        { provide: MAT_DIALOG_DATA, useValue: mockStarship }
      ]
    }).compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(StarshipDetails);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create the component', () => {
    expect(component).toBeTruthy();
  });

  it('should receive starship data via MAT_DIALOG_DATA', () => {
    expect(component.starship.name).toBe('X-Wing');
    expect(component.starship.model).toBe('T-65B');
    expect(component.starship.pilots.length).toBe(2);
    expect(component.starship.films.length).toBe(1);
  });

  it('should render the starship name in template', () => {
    const heading = fixture.debugElement.query(By.css('h2'));
    expect(heading.nativeElement.textContent).toContain('X-Wing');
  });
});
