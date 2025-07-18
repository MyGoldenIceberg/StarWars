import { ComponentFixture, TestBed, fakeAsync, tick } from '@angular/core/testing';
import { StarshipsComponent } from './starships.component';
import { HttpClientTestingModule, HttpTestingController } from '@angular/common/http/testing';
import { MatSnackBarModule } from '@angular/material/snack-bar';
import { MatDialog, MatDialogModule } from '@angular/material/dialog';
import { ReactiveFormsModule } from '@angular/forms';
import { Router } from '@angular/router';
import { of } from 'rxjs';
import { environment } from '../../../environments/environment';

describe('StarshipsComponent', () => {
  let component: StarshipsComponent;
  let fixture: ComponentFixture<StarshipsComponent>;
  let httpMock: HttpTestingController;
  let dialogSpy: jasmine.SpyObj<MatDialog>;
  let routerSpy: jasmine.SpyObj<Router>;

  beforeEach(async () => {
    dialogSpy = jasmine.createSpyObj('MatDialog', ['open']);
    routerSpy = jasmine.createSpyObj('Router', ['navigate']);

    await TestBed.configureTestingModule({
      imports: [
        StarshipsComponent,
        HttpClientTestingModule,
        MatSnackBarModule,
        MatDialogModule,
        ReactiveFormsModule
      ],
      providers: [
        { provide: MatDialog, useValue: dialogSpy },
        { provide: Router, useValue: routerSpy }
      ]
    }).compileComponents();

    fixture = TestBed.createComponent(StarshipsComponent);
    component = fixture.componentInstance;
    httpMock = TestBed.inject(HttpTestingController);
    fixture.detectChanges();

    // Flush initial GET
    const req = httpMock.expectOne(`${environment.apiUrl}/starship/search?page=1&pageSize=10`);
    req.flush({ payload: { items: [], totalCount: 0 } });
  });

  it('should create the component', () => {
    expect(component).toBeTruthy();
  });

  it('should initialize searchForm and call loadStarships', () => {
    expect(component.searchForm).toBeTruthy();
    expect(component.starships.length).toBe(0);
  });

  it('should handle page change and reload', fakeAsync(() => {
    component.onPageChange({ pageIndex: 1, pageSize: 5, length: 0 } as any);
    const req = httpMock.expectOne(`${environment.apiUrl}/starship/search?page=2&pageSize=5`);
    req.flush({ payload: { items: [], totalCount: 0 } });
    tick();
    expect(component.currentPage).toBe(2);
    expect(component.pageSize).toBe(5);
  }));

  it('should load starships on search', fakeAsync(() => {
    component.searchForm.patchValue({ searchField: 'name', searchValue: 'X-wing' });
    component.onSearch();
    const req = httpMock.expectOne(r => r.url.includes('/starship/search') && r.params.has('name'));
    req.flush({ payload: { items: [], totalCount: 0 } });
    tick();
    expect(component.starships).toEqual([]);
  }));

  it('should navigate to create page', () => {
    component.goToCreate();
    expect(routerSpy.navigate).toHaveBeenCalledWith(['/starships/create']);
  });

  it('should open details modal', () => {
    dialogSpy.open.and.returnValue({ afterClosed: () => of(true) } as any);
    component.openDetails({ id: '1' });
    expect(dialogSpy.open).toHaveBeenCalled();
  });

  it('should open edit dialog and reload if updated', fakeAsync(() => {
    dialogSpy.open.and.returnValue({
      afterClosed: () => of(true)
    } as any);
    component.editShip({ id: '1', name: 'Test' });

    const req = httpMock.expectOne(`${environment.apiUrl}/starship/search?page=1&pageSize=10`);
    req.flush({ payload: { items: [], totalCount: 0 } });
    tick();
    expect(dialogSpy.open).toHaveBeenCalled();
  }));

  it('should delete starship on confirm', fakeAsync(() => {
    spyOn(window, 'confirm').and.returnValue(true);
    component.deleteShip({ id: '1', name: 'Test' });

    const delReq = httpMock.expectOne(`${environment.apiUrl}/StarShip/hard/1`);
    delReq.flush({});
    const reloadReq = httpMock.expectOne(`${environment.apiUrl}/starship/search?page=1&pageSize=10`);
    reloadReq.flush({ payload: { items: [], totalCount: 0 } });
    tick();
    expect(component.starships).toEqual([]);
  }));
});
