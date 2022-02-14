<x-header title="Contact Us" />
<br><br><br>
<div class="mt-5 mb-5">
    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d13614.538367349336!2d74.2936701!3d31.4517252!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xf39379efff4dd86!2sUniversity%20of%20Management%20%26%20Technology%20(UMT)!5e0!3m2!1sen!2s!4v1644821540567!5m2!1sen!2s" width="100%" height="450" style="border:2;" allowfullscreen="" loading="lazy"></iframe>
</div>

<div class="container-contact100 mt-2 ">

    <div class="wrap-contact100 shadow-lg border border-secondary">
        <div class="contact100-form-title"
            style="background-image: url({{ URL::asset('/img/contactbg/bg-01.jpg') }});">
            <span class="contact100-form-title-1">
                Contact Us
            </span>

            <span class="contact100-form-title-2">
                Feel free to drop us a line below!
            </span>

        </div>
        @if (session()->has('success'))
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            <strong>{{ session()->get('success') }}</strong>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        @endif
        <form action="{{URL::to('sendcontactmail')}}" method="POST" class="contact100-form" >
            @csrf
            <div class="wrap-input100">
                <span class="label-input100">Full Name:</span>
                <input class="input100" type="text" name="name" placeholder="Enter full name" required>
                <span class="text-danger">@error('name')
                {{ $message }}
                @enderror</span>
            </div>

            <div class="wrap-input100">
                <span class="label-input100">Email:</span>
                <input class="input100" type="text" name="email" placeholder="Enter email addess" required>
                <span class="text-danger">@error('email')
                {{ $message }}
                @enderror</span>
            </div>

            <div class="wrap-input100">
                <span class="label-input100">Subject:</span>
                <input class="input100" type="text" name="subject" placeholder="Enter Subject of Email" required>
                <span class="text-danger">@error('subject')
                {{ $message }}
                @enderror</span>
            </div>

            <div class="wrap-input100">
                <span class="label-input100">Message:</span>
                <textarea class="input100" name="message" placeholder="Your Comment..."></textarea>
                <span class="text-danger">@error('message')
                {{ $message }}
                @enderror</span>
            </div>

            <div class="container-contact100-form-btn">
                <button class="contact100-form-btn">
                    Submit
                </button>
            </div>
        </form>
    </div>

</div>



<x-footer />
