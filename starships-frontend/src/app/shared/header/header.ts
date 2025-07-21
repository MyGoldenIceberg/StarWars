import { Component } from '@angular/core';
import { Router } from '@angular/router';
import { MatButtonModule } from '@angular/material/button';
import { MatToolbarModule } from '@angular/material/toolbar';
import { HttpClient } from '@angular/common/http';
import { CommonModule } from '@angular/common';
import { AuthService } from '../../modules/auth/auth.service';
import { Observable } from 'rxjs';

@Component({
  selector: 'app-header',
  standalone: true,
  imports: [MatToolbarModule, MatButtonModule, CommonModule],
  templateUrl: './header.html',
  styleUrl: './header.scss'
})
export class HeaderComponent {
  isLoggedIn$!: Observable<boolean>;
  constructor(private http: HttpClient,
    private router: Router,
    private authService: AuthService) {
      this.isLoggedIn$ = this.authService.isLoggedIn$;
    }

  logout(): void {
    this.authService.logout();
    this.router.navigate(['/login']);
  }
}
