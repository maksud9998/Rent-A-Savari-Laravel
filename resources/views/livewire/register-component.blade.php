<main id="main" class="main-site left-sidebar">

<div class="container">

  <div class="wrap-breadcrumb">
    <ul>
      <li class="item-link"><a href="/" class="link">home</a></li>
      <li class="item-link"><span>Register</span></li>
    </ul>
  </div>
  <div class="row">
    <div class="col-lg-6 col-sm-6 col-md-12 col-xs-12 col-md-offset-3">							
      <div class=" main-content-area">
        <div class="wrap-login-item ">
          <div class="register-form form-item ">
                            <x-jet-validation-errors class="mb-4" />
            <form class="form-stl" action="/register" name="frm-login" method="POST" >
                                @csrf
              <fieldset class="wrap-title">
                <h3 class="form-title">Create an account</h3>
                <h4 class="form-subtitle">Personal infomation</h4>
              </fieldset>									
              <fieldset class="wrap-input item-width-in-half left-item ">
                <label for="frm-reg-first_name">First Name *</label>
                <input type="text" id="frm-reg-first_name" name="first_name" placeholder="First Name" required autocomplete="first_name">
              </fieldset>
              <fieldset class="wrap-input item-width-in-half ">
                <label for="frm-reg-last_name">Last Name *</label>
                <input type="text" id="frm-reg-last_name" name="last_name" placeholder="Last Name" required autocomplete="last_name">
              </fieldset>
                                <fieldset class="wrap-input item-width-in-half left-item ">
                <label for="frm-reg-phone_no1">Mobile No *</label>
                <input type="text" id="frm-reg-phone_no1" name="phone_no1" placeholder="Mobile No" required autocomplete="phone_no1">
              </fieldset>
              <fieldset class="wrap-input item-width-in-half ">
                <label for="frm-reg-license_no">Licence No *</label>
                <input type="text" id="frm-reg-license_no" name="license_no" placeholder="Licence No" autocomplete="license_no">
              </fieldset>

              <fieldset class="wrap-input">
                <label for="frm-reg-email">Email Address*</label>
                <input type="email" id="frm-reg-email" name="email" placeholder="Email address" :value="email">
              </fieldset>
            
              {{-- <fieldset class="wrap-title">
                <h3 class="form-title">Login Information</h3>
              </fieldset> --}}
              <fieldset class="wrap-input item-width-in-half left-item ">
                <label for="frm-reg-pass">Password *</label>
                <input type="password" id="frm-reg-pass" name="password" placeholder="Password" required autocomplete="new-password">
              </fieldset>
              <fieldset class="wrap-input item-width-in-half ">
                <label for="frm-reg-cfpass">Confirm Password *</label>
                <input type="password" id="frm-reg-cfpass" name="password_confirmation" placeholder="Confirm Password" required autocomplete="new-password">
              </fieldset>
              <input type="submit" class="btn btn-sign" value="Register" name="register" href="/">
            </form>
          </div>											
        </div>
      </div><!--end main products area-->		
    </div>
  </div><!--end row-->

</div><!--end container-->

</main>