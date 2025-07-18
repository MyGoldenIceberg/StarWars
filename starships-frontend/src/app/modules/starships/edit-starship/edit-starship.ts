import { Component, Inject, OnInit } from '@angular/core';
import { MAT_DIALOG_DATA, MatDialogRef, MatDialogModule } from '@angular/material/dialog';
import { FormBuilder, FormGroup, ReactiveFormsModule, Validators } from '@angular/forms';
import { CommonModule } from '@angular/common';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';
import { MatButtonModule } from '@angular/material/button';
import { HttpClient } from '@angular/common/http';
import { environment } from '../../../../environments/environment';
import { MatSnackBar } from '@angular/material/snack-bar';


@Component({
  selector: 'app-edit-starship',
  imports: [
    CommonModule,
    MatDialogModule,
    ReactiveFormsModule,
    MatFormFieldModule,
    MatInputModule,
    MatButtonModule
  ],
  templateUrl: './edit-starship.html',
  styleUrl: './edit-starship.scss'
})
export class EditStarshipComponent implements OnInit {
  form!: FormGroup;

  constructor(
    @Inject(MAT_DIALOG_DATA) public data: any,
    private fb: FormBuilder,
    private http: HttpClient,
    private dialogRef: MatDialogRef<EditStarshipComponent>,
    private snackBar: MatSnackBar) {}

  ngOnInit(): void {
    this.form = this.fb.group({
      id: [this.data.id, Validators.required],
      name: [this.data.name],
      model: [this.data.model],
      manufacturer: [this.data.manufacturer],
      costInCredits: [this.data.costInCredits],
      length: [this.data.length],
      maxAtmospheringSpeed: [this.data.maxAtmospheringSpeed],
      consumables: [this.data.consumables],
      starshipClass: [this.data.starshipClass],
      hyperdriveRating: [this.data.hyperdriveRating],
      crew: [this.data.crew],
      passengers: [this.data.passengers],
      mglt: [this.data.mglt],
      cargoCapacity: [this.data.cargoCapacity],
      pilots: [this.data.pilots],
      films: [this.data.films]
    });
  }

  onSubmit(): void {
    if (this.form.invalid) return;
    
    const id = this.form.value.id;

    const payload = {
    ...this.form.value,
    pilots: this.form.value.pilots?.toString().split(',').map((p: string) => p.trim()),
    films: this.form.value.films?.toString().split(',').map((f: string) => f.trim())
  };

    this.http.put(`${environment.apiUrl}/StarShip/${id}`, payload).subscribe({
    next: () => {
      this.snackBar.open('Starship updated successfully!', 'Close', {
        duration: 3000,
        panelClass: ['snackbar-success']
      });
      this.dialogRef.close(true);
    },
    error: (err) => {
      this.snackBar.open('Update failed. Try again.', 'Close', {
        duration: 3000,
        panelClass: ['snackbar-error']
      });
      console.error('Update failed:', err);
    }
  });
  }
}
