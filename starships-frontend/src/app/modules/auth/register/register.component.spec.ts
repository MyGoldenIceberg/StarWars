import { ComponentFixture, TestBed } from '@angular/core/testing';
import { RegisterComponent } from './register.component';
import { ReactiveFormsModule } from '@angular/forms';
import { of, throwError } from 'rxjs';
import { AuthService } from '../auth.service';
import { Router } from '@angular/router';
import { MatSnackBarModule } from '@angular/material/snack-bar';

describe('RegisterComponent', () => {
  let component: RegisterComponent;
  let fixture: ComponentFixture<RegisterComponent>;
  let authSpy: jasmine.SpyObj<AuthService>;
  let routerSpy: jasmine.SpyObj<Router>;

  beforeEach(async () => {
    authSpy = jasmine.createSpyObj('AuthService', ['register']);
    routerSpy = jasmine.createSpyObj('Router', ['navigate']);

    await TestBed.configureTestingModule({
      imports: [RegisterComponent, ReactiveFormsModule, MatSnackBarModule],
      providers: [
        { provide: AuthService, useValue: authSpy },
        { provide: Router, useValue: routerSpy }
    ]
}).compileComponents();

    fixture = TestBed.createComponent(RegisterComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });

  it('should not submit if form is invalid', () => {
    component.form.setValue({ email: '', password: '', confirmPassword: '' });
    component.onSubmit();
    expect(authSpy.register).not.toHaveBeenCalled();
  });

  it('should register and navigate on success', () => {
    component.form.setValue({
      email: 'test@example.com',
      password: '123456',
      confirmPassword: '123456'
    });

    authSpy.register.and.returnValue(of({}));
    component.onSubmit();

    expect(authSpy.register).toHaveBeenCalled();
    expect(routerSpy.navigate).toHaveBeenCalledWith(['/login']);
  });

  it('should show error on register failure', () => {
    component.form.setValue({
      email: 'fail@example.com',
      password: '123456',
      confirmPassword: '123456'
    });

    authSpy.register.and.returnValue(throwError(() => new Error('fail')));
    component.onSubmit();
    expect(authSpy.register).toHaveBeenCalled();
  });
});
