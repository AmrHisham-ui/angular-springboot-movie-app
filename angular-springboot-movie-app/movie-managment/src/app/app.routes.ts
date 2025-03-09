// src/app/app.routes.ts
import { Routes } from '@angular/router';
import { authGuard } from './auth/auth.guard';

export const routes: Routes = [
    {
      path: 'auth',
      children: [
        {
          path: 'login',
          loadComponent: () => import('./auth/login/login.component').then(m => m.LoginComponent)
        },
        {
          path: 'register',
          loadComponent: () => import('./auth/register/register.component').then(m => m.RegisterComponent)
        },
        {
          path: '',
          redirectTo: 'login',
          pathMatch: 'full'
        }
      ]
    },
    {
      path: 'dashboard',
      loadComponent: () => import('./dashboard/dashboard.component').then(m => m.DashboardComponent),
      canActivate: [authGuard]
    },
    {
      path: '',
      redirectTo: 'dashboard',
      pathMatch: 'full'
    },
    {
      path: '**',
      redirectTo: 'dashboard'
    }
  ];
  