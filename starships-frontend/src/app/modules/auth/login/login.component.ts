import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { AuthService } from '../auth.service';
import { FormBuilder, FormGroup, Validators, ReactiveFormsModule } from '@angular/forms';
import { MatFormFieldModule } from '@angular/material/form-field';
import { MatInputModule } from '@angular/material/input';
import { MatCheckboxModule } from '@angular/material/checkbox';
import { MatButtonModule } from '@angular/material/button';
import { CommonModule } from '@angular/common';
import { MatCardModule } from '@angular/material/card';
import { MatIconModule } from '@angular/material/icon';
import { MatSnackBar, MatSnackBarModule } from '@angular/material/snack-bar';



@Component({
  selector: 'app-login',
  imports: [
    CommonModule,
    ReactiveFormsModule,
    MatCardModule,
    MatFormFieldModule,
    MatInputModule,
    MatCheckboxModule,
    MatButtonModule,
    MatIconModule,
    MatSnackBarModule 
  ],
  templateUrl: './login.component.html',
  styleUrl: './login.component.scss'
})
export class LoginComponent implements OnInit {
  form!: FormGroup;
  hidePassword = true;

  constructor(private fb: FormBuilder, 
    private authService: AuthService, 
    private router: Router,
    private snackBar: MatSnackBar) {}

  ngOnInit(): void {
    this.form = this.fb.group({
      email: ['', [Validators.required]],
      password: ['', Validators.required],
      rememberMe: [false]
    });
  }

  onSubmit() {
    if (this.form.invalid) return;

    this.authService.login(this.form.value).subscribe({
      next: (res) => {
        localStorage.setItem('access_token', res.access_token);
        localStorage.setItem('refresh_token', res.refresh_token);
        this.snackBar.open('Login successful!', 'Close', {
          duration: 5000,
          panelClass: ['snackbar-success'],
          verticalPosition: 'top'
        });
        this.router.navigate(['/starships']); 
      },
      error: (err) => {
        this.snackBar.open('Login failed. Please check your credentials.', 'Close', {
          duration: 5000,
          panelClass: ['snackbar-error'],
          verticalPosition: 'top',
        });
        console.error('Login failed:', err)}
    });
  }

  navigateToRegister() {
    this.router.navigate(['/register']);
  }
}