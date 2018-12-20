import { RouterModule, Routes } from '@angular/router';
import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { NavbarComponent } from './component/navbar/navbar.component';
import { ListgamesComponent } from './component/listgames/listgames.component';
import { FooterComponent } from './component/footer/footer.component';
<<<<<<< HEAD
import { DetallesComponent } from './component/detalles/detalles.component';

const routes: Routes = [
  { path: 'detalles', component: DetallesComponent },
  { path: '', component: ListgamesComponent , pathMatch: 'full' },
  { path: '**', redirectTo: '/', pathMatch: 'full' }
];
=======
>>>>>>> parent of 305863f... fixed

@NgModule({
  declarations: [
    AppComponent,
    NavbarComponent,
    ListgamesComponent,
<<<<<<< HEAD
    FooterComponent,
    DetallesComponent
=======
    FooterComponent
>>>>>>> parent of 305863f... fixed
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    RouterModule.forRoot(routes)
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
