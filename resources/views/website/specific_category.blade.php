<x-header title="Specific Category" />


<br><br><br>
<section class="page-add">
    <div class="container">
        <div class="row">
            <div class="col">

            </div>

        </div>
    </div>
</section>


<section class="latest-products">

    <div class="container border border-secondary shadow shadow-lg p-5 ">


             <div class="page-breadcrumb mb-5">
                    <h2>Specific Category</h2>
                    <a href="{{ URL::to('/') }}">Home</a> >
                    <a href="">Cars</a> >
            </div>

        <div class="row" id="product-listt">

                        @foreach ($pro as $value2)

                                <div class="col-lg-3 col-sm-6 mix all {{ $value2['name'] }}">
                                    <div class="single-product-item img-thumbnail ">
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

                        @endforeach

        </div>
    </div>
</section>




<x-footer />
