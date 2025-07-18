import { Component, OnInit } from '@angular/core';
import { CommonModule } from '@angular/common';
import { HttpClient } from '@angular/common/http';
import { MatTableModule } from '@angular/material/table';
import { MatCardModule } from '@angular/material/card';
import { MatButtonModule } from '@angular/material/button';
import { environment } from '../../../environments/environment';
import { FormBuilder, FormGroup, ReactiveFormsModule } from '@angular/forms';
import { MatPaginatorModule, PageEvent } from '@angular/material/paginator';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';
import { MatSnackBar, MatSnackBarModule } from '@angular/material/snack-bar';
import { MatSelectModule } from '@angular/material/select';
import { MatOptionModule } from '@angular/material/core';
import { MatDialog } from '@angular/material/dialog';
import { StarshipDetails } from './starship-details/starship-details';
import { EditStarshipComponent } from './edit-starship/edit-starship';
import { Router } from '@angular/router';


export interface Starship {
  id: string;
  name: string;
  model: string;
  manufacturer: string;
  crew: string;
  hyperdriveRating: string;
}

@Component({
  selector: 'app-starships',
  standalone: true,
  imports: [
    CommonModule,
    MatTableModule,
    MatCardModule,
    MatButtonModule,
    ReactiveFormsModule,
    MatPaginatorModule,
    MatFormFieldModule,
    MatInputModule,
    MatSnackBarModule,
    MatSelectModule,
    MatOptionModule
  ],
  templateUrl: './starships.component.html',
  styleUrl: './starships.component.scss'
})

export class StarshipsComponent implements OnInit {
  selectValue: {name: string; value: string}[] = [{name: 'Name', value: 'name'}, {name: 'Model', value: 'model'}, {name:  'Manufacturer', value: 'manufacturer'}, {name: 'Crew', value: 'crew'}, {name: 'Hyperdrive Rating', value: 'hyperdriveRating'}];
  displayedColumns: string[] = ['name', 'model', 'manufacturer', 'crew', 'hyperdriveRating', 'actions'];
  starships: Starship[] = [];
  totalCount = 0;
  pageSize = 10;
  currentPage = 1;

  searchForm!: FormGroup;

  constructor(private http: HttpClient, 
    private snackBar: MatSnackBar,
    private fb: FormBuilder,
    private dialog: MatDialog,
    private router: Router) {}

  ngOnInit(): void {

    this.searchForm = this.fb.group({
      searchField: ['name'],     
      searchValue: ['']
    });

    this.loadStarships(); 
  }

   loadStarships(): void {
    const field = this.searchForm.value.searchField;
    const value = this.searchForm.value.searchValue;

    const params: any = {
      page: this.currentPage,
      pageSize: this.pageSize
    };

    if (field && value) {
      params[field] = value;
    }

    this.http.get<any>(`${environment.apiUrl}/starship/search`, { params }).subscribe({
      next: res => {
        this.starships = res.payload?.items || [];
        this.totalCount = res.payload?.totalCount || 0;
      },
      error: err => console.error('Failed to load starships', err)
    });
  }

  onSearch(): void {
    const searchValue = this.searchForm.value.searchValue?.trim();
    if (!searchValue) {
    this.searchForm.patchValue({
      searchField: 'name',       
      searchValue: ''            
    });
    this.currentPage = 1;
    this.loadStarships();
  }

  this.currentPage = 1;
  this.loadStarships();
}

  onPageChange(event: PageEvent): void {
    this.currentPage = event.pageIndex + 1;
    this.pageSize = event.pageSize;
    this.loadStarships();
  }

  editShip(starship: any): void {
  const dialogRef = this.dialog.open(EditStarshipComponent, {
    data: starship,
    width: '600px'
  });
  dialogRef.afterClosed().subscribe(updated => {
    if (updated) {
      this.loadStarships(); // reload table
    }
  });
}
  deleteShip(ship: any): void {
    const confirmed = confirm(`Are you sure you want to delete "${ship.name}"?`);

    if (!confirmed) return;

    this.http.delete(`${environment.apiUrl}/StarShip/hard/${ship.id}`).subscribe({
      next: () => {
        this.snackBar.open('Starship deleted.', 'Close', {
          duration: 3000,
          verticalPosition: 'top',
          panelClass: ['snackbar-success']
        });
        this.loadStarships(); // reload table
      },
      error: err => {
        console.error('Failed to delete starship:', err);
        this.snackBar.open('Delete failed. Try again.', 'Close', {
          duration: 3000,
          verticalPosition: 'top',
          panelClass: ['snackbar-error']
        });
      }
    });
  }

  openDetails(starship: any): void {
    this.dialog.open(StarshipDetails, {
      data: starship,
      width: '500px',
      panelClass: 'starship-dialog'
    });
  }

  goToCreate(): void {
  this.router.navigate(['/starships/create']);
}
}
