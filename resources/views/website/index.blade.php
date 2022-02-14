<x-header title="Home" />




<!-- Hero Slider Begin -->
<div id="carouselIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselIndicators" data-slide-to="1"></li>
        <li data-target="#carouselIndicators" data-slide-to="2"></li>
        <li data-target="#carouselIndicators" data-slide-to="3"></li>

    </ol>
    <div class="carousel-inner" role="listbox">

        <div class="carousel-item active"
            style="background-image: url('{{ URL::asset('/img/slider/1.jpg') }}')">
            <div class="carousel-caption d-md-block">
                {{-- <h2 class="display-4 text-light font-weight-bold">Furniture</h2>
                <p class="lead text-light">This is a description for the furniture slide.</p> --}}
            </div>
        </div>


        <div class="carousel-item" style="background-image: url('{{ URL::asset('/img/slider/2.jpg') }}')">
            <div class="carousel-caption  d-md-block">
                {{-- <h2 class="display-4 text-light font-weight-bold">Electronics</h2>
                <p class="lead text-light">This is a description for the Electronics slide.</p> --}}
            </div>
        </div>

        <div class="carousel-item" style="background-image: url('{{ URL::asset('/img/slider/3.jpg') }}')">
            <div class="carousel-caption  d-md-block">
                {{-- <h2 class="display-4 text-light font-weight-bold">Automobile</h2>
                <p class="lead text-light">This is a description for the Automobile slide.</p> --}}
            </div>
        </div>

        <div class="carousel-item" style="background-image: url('{{ URL::asset('/img/slider/4.jpg') }}')">
            <div class="carousel-caption  d-md-block">
                {{-- <h2 class="display-4 text-light font-weight-bold">Room</h2>
                <p class="lead text-light">This is a description for the Rooms slide.</p> --}}
            </div>
        </div>
    </div>
    <a class="carousel-control-prev" href="#carouselIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<!-- Hero Slider End -->



<div class="container mt-5 mb-5 border border-secondary shadow p-5">
    <div class="row">
        <div class="four col-md-4">
            <div class="counter-box bg-1 "> <i class="fa fa-thumbs-o-up"></i> <span class="counter text-light">{{ $customerCount + 2000}}</span>
                <p class="text-light">Happy Customers</p>
            </div>
        </div>
        <div class="four col-md-4">
            <div class="counter-box bg-2 "> <i class="fa fa-group"></i> <span class="counter text-light">{{ $shopCount + 2000}}</span>
                <p class="text-light">Registered Members</p>
            </div>
        </div>
        <div class="four col-md-4">
            <div class="counter-box bg-3 "> <i class="fa fa-shopping-cart"></i> <span class="counter text-light">{{ $productCount + 2000 }}</span>
                <p class="text-light">Available Products</p>
            </div>
        </div>
    </div>
</div>






{{-- Post Ad --}}
 <div class="container mt-5 border border-secondary p-5 border border-secondary shadow mb-5">
        <div class="home-widgets row">
            <div class="home-widgets-title">
                <h3 class="text-center mb-5">
                    Sell Your Car on Our Website and Get the Best Price
                </h3>
            </div>
            <div class="col-md-6 line or">
                <h2>Post your Ad on Our Website</h2>
                <ul>
                    <li>
                        <i class="fa-solid fa-thumbs-o-up"></i>Post your Ad for Free in 3 Easy Steps
                    </li>
                    <li>
                       <i class="fa-solid fa-thumbs-o-up"></i>Get Genuine offers from Verified Buyers
                    </li>
                    <li>
                        <i class="fa-solid fa-thumbs-o-up"></i>Sell your car Fast at the Best Price
                    </li>
                </ul>
                <a style="min-width: 190px" class="btn btn-danger btn-lg mt10 sign-in-comp m-3" href="{{ URL::to('add_product') }}" >Post
                    Your Ad</a>
            </div>
            <div class="col-md-6">
                <h2>Try Motors by SFA Sell It For Me</h2>
                <ul>
                    <li>
                        <i class="fa-solid fa-thumbs-o-up"></i>Dedicated Sales Expert to Sell your Car
                    </li>
                    <li>
                        <i class="fa-solid fa-thumbs-o-up"></i>We Bargain for you and share the Best Offer
                    </li>
                    <li>
                        <i class="fa-solid fa-thumbs-o-up"></i>We ensure Safe &amp; Secure Transaction
                    </li>
                </ul>
                <a class="btn btn-primary btn-lg mt10 sign-in-comp mt-3" href="{{ URL::to('loginasowner') }}" onclick="">Register Your Car</a>
            </div>
        </div>
    </div>




 <section class="content bg-light p-5">
        <div class="container mt-5 mb-5 border border-secondary shadow p-5">
            <div class="row m-0">


                <div class="col-lg-12 text-center mt-5 mb-5">
                    <div class="section-title">
                        <h2>Explore By Body Type</h2>
                    </div>
                </div>

                <a href="{{ URL::to('specific_category/1') }}" class="col text-center category__link col-xl-2 col-lg-2 col-md-2  mb-4 text-decoration-none">
                    <div class="category__img category__img--large card card-body border border-secondary shadow">
                        <span class="badge bg-secondary">01</span>
                        <img src="/img/cars/jeep.svg" alt="" loading="lazy" />
                        <h6 class="card-subtitle mb-1 mt-3 text-center text-muted ">
                            jeep
                        </h6>
                    </div>

                </a>


                <a href="{{ URL::to('specific_category/2') }}" class="col text-center category__link col-xl-2 col-lg-2 col-md-2  mb-4 text-decoration-none">
                    <div class="category__img category__img--large card card-body border border-secondary shadow">
                        <span class="badge bg-info text-white">02</span>
                        <img src="/img/cars/modified.svg" alt="" loading="lazy" />
                        <h6 class="card-subtitle mb-1 mt-3 text-center text-muted ">
                            Modified
                        </h6>
                    </div>

                </a>


                <a href="{{ URL::to('specific_category/3') }}" class="col text-center category__link col-xl-2 col-lg-2 col-md-2  mb-4 text-decoration-none">
                    <div class="category__img category__img--large card card-body border border-secondary shadow">
                        <span class="badge bg-primary">03</span>
                        <img src="/img/cars/convertible.svg" alt="" loading="lazy" />
                        <h6 class="card-subtitle mb-1 mt-3 text-center text-muted ">
                            Convertile
                        </h6>
                    </div>

                </a>


                <a href="{{ URL::to('specific_category/4') }}" class="col text-center category__link col-xl-2 col-lg-2 col-md-2  mb-4 text-decoration-none">
                    <div class="category__img category__img--large card card-body border border-secondary shadow">
                        <span class="badge bg-primary">04</span>
                            <img src="/img/cars/mini.svg" alt="" loading="lazy" />
                            <h6 class="card-subtitle mb-1 mt-3 text-center text-muted ">
                                Mini
                            </h6>
                        </div>

                </a>


                <a href="{{ URL::to('specific_category/5') }}" class="col text-center category__link col-xl-2 col-lg-2 col-md-2  mb-4 text-decoration-none">
                    <div class="category__img category__img--large card card-body border border-secondary shadow">
                        <span class="badge bg-success text-dark">05</span>
                        <img src="/img/cars/off road.svg" alt="" loading="lazy" />
                        <h6 class="card-subtitle mb-1 mt-3 text-center text-muted ">
                            OFF Road
                        </h6>
                    </div>

                </a>


                <a href="{{ URL::to('specific_category/6') }}" class="col text-center category__link col-xl-2 col-lg-2 col-md-2  mb-4 text-decoration-none">
                    <div class="category__img category__img--large card card-body border border-secondary shadow">
                        <span class="badge bg-danger">06</span>
                        <img src="/img/cars/pick up.svg" alt="" loading="lazy" />
                        <h6 class="card-subtitle mb-1 mt-3 text-center text-muted ">
                            Pick UP
                        </h6>
                    </div>

                </a>


                <a href="{{ URL::to('specific_category/7') }}" class="col text-center category__link col-xl-2 col-lg-2 col-md-2  mb-4 text-decoration-none">
                    <div class="category__img category__img--large card card-body border border-secondary shadow">
                        <span class="badge bg-info text-white">07</span>
                        <img src="/img/cars/suv.svg" alt="" loading="lazy" />
                        <h6 class="card-subtitle mb-1 mt-3 text-center text-muted ">
                            SUV
                        </h6>
                    </div>

                </a>


                <a href="{{ URL::to('specific_category/8') }}" class="col text-center category__link col-xl-2 col-lg-2 col-md-2  mb-4 text-decoration-none">
                    <div class="category__img category__img--large card card-body border border-secondary shadow">
                        <span class="badge bg-danger text-white">08</span>
                        <img src="/img/cars/truck.svg" alt="" loading="lazy" />
                        <h6 class="card-subtitle mb-1 mt-3 text-center text-muted ">
                            Truck
                        </h6>
                    </div>

                </a>


                <a href="{{ URL::to('specific_category/9') }}" class="col text-center category__link col-xl-2 col-lg-2 col-md-2  mb-4 text-decoration-none">
                    <div class="category__img category__img--large card card-body border border-secondary shadow">
                        <span class="badge bg-success text-white">09</span>
                        <img src="/img/cars/sports.svg" alt="" loading="lazy" />
                        <h6 class="card-subtitle mb-1 mt-3 text-center text-muted ">
                            Sports
                        </h6>
                    </div>

                </a>


                <a href="{{ URL::to('specific_category/10') }}" class="col text-center category__link col-xl-2 col-lg-2 col-md-2  mb-4 text-decoration-none">
                    <div class="category__img category__img--large card card-body border border-secondary shadow">
                        <span class="badge bg-danger text-white">10</span>
                        <img src="/img/cars/couple.svg" alt="" loading="lazy" />
                        <h6 class="card-subtitle mb-1 mt-3 text-center text-muted ">
                            Couple
                        </h6>
                    </div>

                </a>

                <a href="{{ URL::to('specific_category/11') }}" class="col text-center category__link col-xl-2 col-lg-2 col-md-2  mb-4 text-decoration-none">
                    <div class="category__img category__img--large card card-body border border-secondary shadow">
                        <span class="badge bg-info text-white">11</span>
                        <img src="/img/cars/modified.svg" alt="" loading="lazy" />
                        <h6 class="card-subtitle mb-1 mt-3 text-center text-muted ">
                            Compact SUV
                        </h6>
                    </div>

                </a>

                <a href="{{ URL::to('specific_category/12') }}" class="col text-center category__link col-xl-2 col-lg-2 col-md-2  mb-4 text-decoration-none">
                    <div class="category__img category__img--large card card-body border border-secondary shadow">
                        <span class="badge bg-secondary">12</span>
                        <img src="/img/cars/jeep.svg" alt="" loading="lazy" />
                        <h6 class="card-subtitle mb-1 mt-3 text-center text-muted ">
                            Compact SUV
                        </h6>
                    </div>
                </a>

            </div>
        </div>
 </section>







<!-- Latest Product Begin -->

<section class="latest-products">
    <div class="container border border-secondary shadow p-5">
        <div class="product-filter">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="section-title">
                        <h2>Latest Products</h2>
                    </div>
                    <ul class="product-controls">
                        <li data-filter="*">All</li>
                        @foreach ($c as $value)
                            <li data-filter=".{{ $value['name'] }}">{{ $value['name'] }}</li>
                        @endforeach

                    </ul>
                </div>
            </div>
        </div>

        {{-- Search Box --}}
        <form action="/search" method="post">
            @csrf
            <div class="input-group w-50 mx-auto mb-5">
                <input type="search" class="form-control rounded" name="search" placeholder="Search product" />
                <button type="submit" class="btn btn-outline-primary ml-2">Search</button>
            </div>
        </form>



        <div class="row" id="product-listt">
            @foreach ($c as $value)
                @foreach ($subcat as $value1)
                    @if ($value1['catid'] == $value['id'])
                        @foreach ($product as $value2)
                            @if ($value2['subcatid'] == $value1['id'])
                                <div class="col-lg-3 col-sm-6 mix all {{ $value['name'] }}">
                                    <div class="single-product-item img-thumbnail">
                                        <figure>
                                            <a href="{{ URL::to('product_page/' . $value2['id']) }}"><img
                                                    src="{{ URL::asset('img/' . $value2['img1']) }}"
                                                    alt=""></a>

                                        </figure>
                                        <div class="product-text">
                                            <h6>{{ $value2['name'] }}</h6>
                                            <p>RS. {{ $value2['price'] }}</p>
                                            <a href="{{ URL::to('product_page/' . $value2['id']) }}"><button
                                                    class="btn btn-outline-primary mt-2 mb-3">View Product</button></a>
                                        </div>
                                    </div>
                                </div>
                            @endif
                        @endforeach
                    @endif
                @endforeach
            @endforeach
        </div>
    </div>
</section>
<!-- Latest Product End -->

<!-- ========================================================================= -->
<!-- ========================================================================= -->

<section class="content bg-light p-5">
        <div class="container mt-5 mb-5 border border-secondary shadow p-5">
            <div class="row m-0">

                <div class="col-lg-12 text-center mt-5 mb-5">
                    <div class="section-title">
                        <h2>Explore By Company</h2>
                    </div>
                </div>

                <a href="{{ URL::to('specific_company/1') }}" class="col text-center category__link col-xl-2 col-lg-2 col-md-2  mb-4 text-decoration-none">
                    <div class="category__img category__img--large card card-body border border-secondary shadow">

                        <img src="/img/cars/company/Audi.png" alt="" loading="lazy" />
                        <h6 class="card-subtitle mb-1 mt-3 text-center text-muted ">
                            Audi
                        </h6>
                    </div>

                </a>


                <a href="{{ URL::to('specific_company/2') }}" class="col text-center category__link col-xl-2 col-lg-2 col-md-2  mb-4 text-decoration-none">
                    <div class="category__img category__img--large card card-body border border-secondary shadow">

                        <img src="/img/cars/company/BMW.png" alt="" loading="lazy" />
                        <h6 class="card-subtitle mb-1 mt-3 text-center text-muted ">
                            BMW
                        </h6>
                    </div>

                </a>


                <a href="{{ URL::to('specific_company/3') }}" class="col text-center category__link col-xl-2 col-lg-2 col-md-2  mb-4 text-decoration-none">
                    <div class="category__img category__img--large card card-body border border-secondary shadow">

                        <img src="/img/cars/company/Honda.png" alt="" loading="lazy" />
                        <h6 class="card-subtitle mb-1 mt-3 text-center text-muted ">
                            Honda
                        </h6>
                    </div>

                </a>


                <a href="{{ URL::to('specific_company/4') }}" class="col text-center category__link col-xl-2 col-lg-2 col-md-2  mb-4 text-decoration-none">
                    <div class="category__img category__img--large card card-body border border-secondary shadow">

                            <img src="/img/cars/company/Jeep.png" alt="" loading="lazy" />
                            <h6 class="card-subtitle mb-1 mt-3 text-center text-muted ">
                               Jeep
                            </h6>
                        </div>

                </a>


                <a href="{{ URL::to('specific_company/5') }}" class="col text-center category__link col-xl-2 col-lg-2 col-md-2  mb-4 text-decoration-none">
                    <div class="category__img category__img--large card card-body border border-secondary shadow">

                        <img src="/img/cars/company/hyundai.png" alt="" loading="lazy" />
                        <h6 class="card-subtitle mb-1 mt-3 text-center text-muted ">
                            Hundai
                        </h6>
                    </div>

                </a>


                <a href="{{ URL::to('specific_company/6') }}" class="col text-center category__link col-xl-2 col-lg-2 col-md-2  mb-4 text-decoration-none">
                    <div class="category__img category__img--large card card-body border border-secondary shadow">

                        <img src="/img/cars/company/Lexus.png" alt="" loading="lazy" />
                        <h6 class="card-subtitle mb-1 mt-3 text-center text-muted ">
                            Lexus
                        </h6>
                    </div>

                </a>


                <a href="{{ URL::to('specific_company/7') }}" class="col text-center category__link col-xl-2 col-lg-2 col-md-2  mb-4 text-decoration-none">
                    <div class="category__img category__img--large card card-body border border-secondary shadow">

                        <img src="/img/cars/company/mercedes.png" alt="" loading="lazy" />
                        <h6 class="card-subtitle mb-1 mt-3 text-center text-muted ">
                            Mercedes
                        </h6>
                    </div>

                </a>


                <a href="{{ URL::to('specific_company/8') }}" class="col text-center category__link col-xl-2 col-lg-2 col-md-2  mb-4 text-decoration-none">
                    <div class="category__img category__img--large card card-body border border-secondary shadow">

                        <img src="/img/cars/company/mg.png" alt="" loading="lazy" />
                        <h6 class="card-subtitle mb-1 mt-3 text-center text-muted ">
                           MG
                        </h6>
                    </div>

                </a>


                <a href="{{ URL::to('specific_company/9') }}" class="col text-center category__link col-xl-2 col-lg-2 col-md-2  mb-4 text-decoration-none">
                    <div class="category__img category__img--large card card-body border border-secondary shadow">

                        <img src="/img/cars/company/Mitsubishi.png" alt="" loading="lazy" />
                        <h6 class="card-subtitle mb-1 mt-3 text-center text-muted ">
                            Mitsubishi
                        </h6>
                    </div>

                </a>


                <a href="{{ URL::to('specific_company/10') }}" class="col text-center category__link col-xl-2 col-lg-2 col-md-2  mb-4 text-decoration-none">
                    <div class="category__img category__img--large card card-body border border-secondary shadow">

                        <img src="/img/cars/company/Nisan.png" alt="" loading="lazy" />
                        <h6 class="card-subtitle mb-1 mt-3 text-center text-muted ">
                            Nisan
                        </h6>
                    </div>

                </a>

                <a href="{{ URL::to('specific_company/11') }}" class="col text-center category__link col-xl-2 col-lg-2 col-md-2  mb-4 text-decoration-none">
                    <div class="category__img category__img--large card card-body border border-secondary shadow">

                        <img src="/img/cars/company/Suzuki.png" alt="" loading="lazy" />
                        <h6 class="card-subtitle mb-1 mt-3 text-center text-muted ">
                            Suzuki
                        </h6>
                    </div>

                </a>

                <a href="{{ URL::to('specific_company/12') }}" class="col text-center category__link col-xl-2 col-lg-2 col-md-2  mb-4 text-decoration-none">
                    <div class="category__img category__img--large card card-body border border-secondary shadow">

                        <img src="/img/cars/company/Tyota.png" alt="" loading="lazy" />
                        <h6 class="card-subtitle mb-1 mt-3 text-center text-muted ">
                            Tyota
                        </h6>
                    </div>
                </a>

            </div>
        </div>
 </section>

<!-- Testimonials-->

<section class="">
<br>
<h2 class="mb-5 text-center">What people are saying...</h2>

<div class="containerr border border-secondary shadow p-5">

    <div class="box border border-secondary">
        <div class="image">
            <img class="shadow shadow-lg" src="{{ URL::asset('/img/testimonial/testimonial1.jpeg') }}">
        </div>
        <div class="name_job">Shazaib Sarwar</div>
        <p> exterior acha ha or interior bhi 13lacs k budget m boht achi car ha 1.3 corolla gli or 1.3 honda city se power wise boht achi ha under power bilkul bhi nhi ha fuel average city m with AC 13 to 15 ha or long p 17 se 19 araam se</p>
    </div>
    <div class="box border border-secondary">
        <div class="image">
            <img class="shadow shadow-lg" src="{{ URL::asset('/img/testimonial/testimonial2.jpeg') }}" alt="">
        </div>
        <div class="name_job">Aqib javed</div>
        <p> exterior acha ha or interior bhi 13lacs k budget m boht achi car ha 1.3 corolla gli or 1.3 honda city se power wise boht achi ha under power bilkul bhi nhi ha fuel average city m with AC 13 to 15 ha or long p 17 se 19 araam se</p>
    </div>
    <div class="box border border-secondary">
        <div class="image">
            <img class="shadow shadow-lg" src="{{ URL::asset('/img/testimonial/testimonial3.jpeg') }}" alt="">
        </div>
        <div class="name_job">Muhammad Faizan Ameen</div>
        <p> exterior acha ha or interior bhi 13lacs k budget m boht achi car ha 1.3 corolla gli or 1.3 honda city se power wise boht achi ha under power bilkul bhi nhi ha fuel average city m with AC 13 to 15 ha or long p 17 se 19 araam se</p>
    </div>
</div>
<br>
</section>


<div class="mt-5">
    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d13614.538367349336!2d74.2936701!3d31.4517252!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xf39379efff4dd86!2sUniversity%20of%20Management%20%26%20Technology%20(UMT)!5e0!3m2!1sen!2s!4v1644821540567!5m2!1sen!2s" width="100%" height="450" style="border:2;" allowfullscreen="" loading="lazy"></iframe>
</div>






<!-- Footer Section Begin -->
<x-footer />
