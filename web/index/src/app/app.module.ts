import { RouterModule, Routes } from '@angular/router';
import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { NavbarComponent } from './component/navbar/navbar.component';
import { ListgamesComponent } from './component/listgames/listgames.component';
import { FooterComponent } from './component/footer/footer.component';
import { DetallesComponent } from './component/detalles/detalles.component';

const routes: Routes = [
  { path: 'detalles', component: DetallesComponent },
  { path: '', component: ListgamesComponent , pathMatch: 'full' },
  { path: '**', redirectTo: '/', pathMatch: 'full' }
];

@NgModule({
  declarations: [
    AppComponent,
    NavbarComponent,
    ListgamesComponent,
    FooterComponent,
    DetallesComponent
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
