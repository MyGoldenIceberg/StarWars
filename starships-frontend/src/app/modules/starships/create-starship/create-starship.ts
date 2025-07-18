import { Component } from '@angular/core';
import { FormBuilder, Validators, FormGroup, ReactiveFormsModule } from '@angular/forms';
import { HttpClient } from '@angular/common/http';
import { Router } from '@angular/router';
import { MatSnackBar } from '@angular/material/snack-bar';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatCardModule } from '@angular/material/card';
import { MatInputModule } from '@angular/material/input';
import { MatButtonModule } from '@angular/material/button';
import { CommonModule } from '@angular/common';
import { environment } from '../../../../environments/environment';

@Component({
  selector: 'app-create-starship',
  imports: [
    CommonModule,
    ReactiveFormsModule,
    MatFormFieldModule,
    MatInputModule,
    MatButtonModule,
    MatCardModule
  ],
  templateUrl: './create-starship.html',
  styleUrl: './create-starship.scss'
})

export class CreateStarshipComponent {
  form!: FormGroup;

  constructor(
    private fb: FormBuilder,
    private http: HttpClient,
    private snackBar: MatSnackBar,
    private router: Router
  ) {
    this.form = this.fb.group({
      name: ['', Validators.required],
      model: ['', Validators.required],
      manufacturer: [''],
      costInCredits: [''],
      length: [''],
      maxAtmospheringSpeed: [''],
      consumables: [''],
      starshipClass: [''],
      hyperdriveRating: [''],
      crew: [''],
      passengers: [''],
      mglt: [''],
      cargoCapacity: ['']
    });
  }

  onSubmit(): void {
    if (this.form.invalid) return;

    this.http.post(`${environment.apiUrl}/StarShip/Create`, this.form.value).subscribe({
      next: () => {
        this.snackBar.open('Starship created successfully!', 'Close', {
          duration: 3000,
          panelClass: ['snackbar-success']
        });
        this.router.navigate(['/starships']);
      },
      error: (err) => {
        console.error(err);
        this.snackBar.open('Creation failed. Try again.', 'Close', {
          duration: 3000,
          panelClass: ['snackbar-error']
        });
      }
    });
  }
}
