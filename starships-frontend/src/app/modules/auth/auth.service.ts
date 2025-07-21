import { Injectable } from '@angular/core';
import { HttpClient, HttpHeaders, HttpParams } from '@angular/common/http';
import { environment } from '../../../environments/environment';
import { Observable } from 'rxjs';

export interface AuthResponse {
  access_token: string;
  token_type: string;
  expires_in: number;
  scope: string;
  id_token: string;
  refresh_token: string;
}

@Injectable({ providedIn: 'root' })
export class AuthService {
  private readonly tokenKey = 'access_token';
  private baseUrl = environment.apiUrl;

  constructor(private http: HttpClient) {}

  isLoggedIn(): boolean {
    const token = localStorage.getItem(this.tokenKey);
    return !!token;
  }

  login(credentials: { email: string; password: string }): Observable<AuthResponse> {
    const body = new HttpParams()
      .set('username', credentials.email)
      .set('password', credentials.password)
      .set('grant_type', 'password'); 

    const headers = new HttpHeaders({
      'Content-Type': 'application/x-www-form-urlencoded'
    });

    console.log(body);

    return this.http.post<AuthResponse>(`${this.baseUrl}/connect/token`, body.toString(),  { headers });
  }

  register(payload: { email: string; password: string}): Observable<any> {    
    return this.http.post(`${this.baseUrl}/auth/register`, payload);
  }
}
