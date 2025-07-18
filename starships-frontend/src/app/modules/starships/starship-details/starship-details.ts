import { Component, Inject } from '@angular/core';
import { MAT_DIALOG_DATA, MatDialogModule } from '@angular/material/dialog';
import { CommonModule } from '@angular/common';


@Component({
  selector: 'app-starship-details',
  imports: [
    CommonModule,
    MatDialogModule
  ],
  templateUrl: './starship-details.html',
  styleUrl: './starship-details.scss'
})
export class StarshipDetails {
  constructor(@Inject(MAT_DIALOG_DATA) public starship: any) {}

}
