import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { MatButtonModule } from '@angular/material/button';
import { MatToolbarModule } from '@angular/material/toolbar';
import { HttpClient } from '@angular/common/http';
import { MatSnackBar } from '@angular/material/snack-bar';
import { environment } from '../../../environments/environment';
import { AuthService } from '../../modules/auth/auth.service';

@Component({
  selector: 'app-header',
  standalone: true,
  imports: [MatToolbarModule, MatButtonModule],
  templateUrl: './header.html',
  styleUrl: './header.scss'
})
export class HeaderComponent {
  constructor(private http: HttpClient,
    private router: Router,
    private snackBar: MatSnackBar,
    private authService: AuthService) {}

  logout(): void {
    this.http.post(`${environment.apiUrl}/auth/logout`, {}).subscribe({
      next: () => {
        localStorage.removeItem('access_token');
        this.snackBar.open('Logged out successfully', 'Close', {
          duration: 3000,
          panelClass: ['snackbar-success']
        });
        this.router.navigate(['/login']);
      },
      error: (err) => {
        this.snackBar.open('Logout failed. Please try again.', 'Close', {
          duration: 3000,
          panelClass: ['snackbar-error']
        });
        console.error('Logout error:', err);
      }
    });
  }
}
