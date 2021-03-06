import {Injectable} from '@angular/core';
import {Router} from '@angular/router';
import {AuthService} from './auth.service';

@Injectable()
export class AuthGuardService {

  constructor(public auth: AuthService, public router: Router) {}

  canActivate(): boolean {
    return true;
    /*if (this.auth.getToken()) {
      return true;
    }
      this.router.navigate(['']);
      return false;
    */
  }
}
