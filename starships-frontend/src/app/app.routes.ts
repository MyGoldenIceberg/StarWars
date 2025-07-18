import { Routes } from '@angular/router';
import { LoginComponent } from '../app/modules/auth/login/login.component'
import { RegisterComponent } from '../app/modules/auth/register/register.component';
import { StarshipsComponent } from './modules/starships/starships.component';
import { AuthGuard } from './core/guards/auth.guard';

export const appRoutes: Routes = [
  { path: 'register', component: RegisterComponent },
  { path: 'login', component: LoginComponent },
  { path: 'starships', component: StarshipsComponent, canActivate: [AuthGuard] },
  {
  path: 'starships/create',
  loadComponent: () => import('./modules/starships/create-starship/create-starship').then(m => m.CreateStarshipComponent),
  canActivate: [AuthGuard]
},
  { path: '', redirectTo: 'login', pathMatch: 'full' }
];
