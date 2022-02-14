<x-adminheader title="Dashboard" />
<!-- page content -->
<div class="right_col" role="main">
    <div class="">
        <div class="page-title">
            <div class="title_left">
                <h3>Dashboard</h3>
            </div>
        </div>
        <br><br><br>


<div class="container mt-5 mb-5 border border-secondary shadow p-5">
    <div class="row mb-5">
        <div class="four col-md-4">
            <div class="counter-box bg-1"> <i class="fa fa-thumbs-o-up"></i> <span class="counter text-light" style="color: white">{{ $customerCount }}</span>
                <p style="color: white" >Happy Customers</p>
            </div>
        </div>
        <div class="four col-md-4">
            <div class="counter-box bg-2"> <i class="fa fa-group"></i> <span class="counter text-light" style="color: white">{{ $shopCount }}</span>
                <p style="color: white">Registered Members</p>
            </div>
        </div>
        <div class="four col-md-4">
            <div class="counter-box bg-3"> <i class="fa fa-shopping-cart"></i> <span class="counter text-light" style="color: white">{{ $productCount }}</span>
                <p style="color: white">Available Products</p>
            </div>
        </div>
    </div>
</div>
 <br><br><br>

        <a href="{{ URL::to('admin_view_pending_requests') }}" class="btn btn-primary mt-5">Pending
            Requests
            <span class="badge badge-danger">{{ $CountPendingRequests }}</span></a>
        <br><br>
        <div class="table-responsive">
            <table class="table table-bordered table-striped table-hover">
                <thead>
                    <tr style="color:black">
                        <th>#</th>
                        <th>Shopkeeper Name</th>
                        <th>Phone No</th>
                        <th>CNIC</th>
                        <th>Email</th>
                        <th>Password</th>
                        <th>Shop Name</th>
                        <th>Shop Address</th>
                        <th>Delete</th>
                        <th>Block/UnBlock</th>

                    </tr>
                </thead>
                <tbody>
                    @php
                        $i = 1;
                    @endphp
                    @foreach ($allShops as $value)
                        <tr style="color:black">
                            <th scope="row">{{ $i }}</th>
                            <td class="text-capitalize">{{ $value->fname . '' . $value->lname }}</td>
                            <td>{{ $value->phoneno }}</td>
                            <td>{{ $value->cnic }}</td>
                            <td>{{ $value->email }}</td>
                            <td>{{ $value->password }}</td>
                            <td class="text-capitalize">{{ $value->shopname }}</td>
                            <td>{{ $value->shopaddress }}</td>
                            <td><a href="{{ URL::asset('/admin_delete_shop/' . $value->id) }}"
                                    class="btn btn-danger">Delete</a></td>
                            @if ($value->status == 1)
                                <td><a href="{{ URL::to('admin_unblock_shop/' . $value->id) }}"
                                        class="btn btn-primary">UnBlock</a></td>
                            @else
                                <td><a href="{{ URL::to('admin_block_shop/' . $value->id) }}"
                                        class="btn btn-primary">Block</a></td>
                            @endif


                        </tr>
                        @php
                            $i++;
                        @endphp
                    @endforeach

                </tbody>
            </table>
        </div>
    </div>

    <!-- /page content -->

    <x-adminfooter />
