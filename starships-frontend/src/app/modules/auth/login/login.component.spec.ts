import { ComponentFixture, TestBed } from '@angular/core/testing';
import { LoginComponent } from './login.component';
import { ReactiveFormsModule } from '@angular/forms';
import { of, throwError } from 'rxjs';
import { AuthService } from '../auth.service';
import { Router } from '@angular/router';
import { MatSnackBarModule } from '@angular/material/snack-bar';

describe('LoginComponent', () => {
  let component: LoginComponent;
  let fixture: ComponentFixture<LoginComponent>;
  let authServiceSpy: jasmine.SpyObj<AuthService>;
  let routerSpy: jasmine.SpyObj<Router>;

  beforeEach(async () => {
    authServiceSpy = jasmine.createSpyObj('AuthService', ['login']);
    routerSpy = jasmine.createSpyObj('Router', ['navigate']);

    await TestBed.configureTestingModule({
      imports: [ReactiveFormsModule, MatSnackBarModule, LoginComponent],
      providers: [
        { provide: AuthService, useValue: authServiceSpy },
        { provide: Router, useValue: routerSpy }
      ]
    }).compileComponents();

    fixture = TestBed.createComponent(LoginComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });

  it('should not login if form is invalid', () => {
    component.form.setValue({ email: '', password: '', rememberMe: false });
    component.onSubmit();
    expect(authServiceSpy.login).not.toHaveBeenCalled();
  });

  it('should login and navigate to starships', () => {
    component.form.setValue({ email: 'user@example.com', password: '123456', rememberMe: false });
    authServiceSpy.login.and.returnValue(of({
      access_token: 'fake-token',
      token_type: 'Bearer',
      expires_in: 3600,
      scope: 'openid',
      id_token: 'fake-id-token',
      refresh_token: 'fake-refresh-token'
    }));

    component.onSubmit();

    expect(authServiceSpy.login).toHaveBeenCalled();
    expect(routerSpy.navigate).toHaveBeenCalledWith(['/starships']);
  });

  it('should show error if login fails', () => {
    component.form.setValue({ email: 'fail@example.com', password: '123456', rememberMe: false });
    authServiceSpy.login.and.returnValue(throwError(() => new Error('error')));
    component.onSubmit();
    expect(authServiceSpy.login).toHaveBeenCalled();
  });
});
