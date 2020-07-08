import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { NewComponent } from 'app/new/new.component';

const routes: Routes = [
  {
    path: '',
    data: {
      title: 'New'
    },
    children: [
      {
        path: 'new',
        component: NewComponent,
        data: {
          title: 'New Component'
        }
      }
    ]
  }
];

@NgModule({
  imports: [RouterModule.forChild(routes)],
  exports: [RouterModule]
})
export class NewRoutingModule { }
