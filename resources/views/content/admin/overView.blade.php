@extends('template.admin')

@section('css')
    {{-- Css code --}}
@stop

@section('title')
    Tổng quan
@stop

@section('content')

    {{-- Bắt đầu cục tổng quan --}}
    <div class="row">
        <div class="col-md-4 stretch-card grid-margin">
            <div class="card bg-gradient-danger card-img-holder text-white">
                <div class="card-body">
                    <img src="{{ asset('img/circle.svg') }}" class="card-img-absolute" alt="circle-image">
                    <h4 class="font-weight-normal mb-3">Tổng thu nhập <i
                            class="mdi mdi-chart-line mdi-24px float-right"></i>
                    </h4>
                    <h2 class="mb-5">
                        {{ number_format($course->total_price, 0, '', ',') }} đ
                    </h2>
                    <h6 class="card-text">Giảm khoảng 60%</h6>
                </div>
            </div>
        </div>
        <div class="col-md-4 stretch-card grid-margin">
            <div class="card bg-gradient-info card-img-holder text-white">
                <div class="card-body">
                    <img src="{{ asset('img/circle.svg') }}" class="card-img-absolute" alt="circle-image">
                    <h4 class="font-weight-normal mb-3">Khóa học đã bán<i
                            class="mdi mdi-cart-outline mdi-24px float-right"></i>
                    </h4>
                    <h2 class="mb-5">
                        {{ $course->number_order }} Khóa
                    </h2>
                    <h6 class="card-text">Tăng khoảng 30%</h6>
                </div>
            </div>
        </div>
        <div class="col-md-4 stretch-card grid-margin">
            <div class="card bg-gradient-success card-img-holder text-white">
                <div class="card-body">
                    <img src="{{ asset('img/circle.svg') }}" class="card-img-absolute" alt="circle-image">
                    <h4 class="font-weight-normal mb-3">Người dùng <i
                            class="mdi mdi-account-star mdi-24px float-right"></i>
                    </h4>
                    <h2 class="mb-5">
                        {{ $number_user }} Tài khoản
                    </h2>
                    <h6 class="card-text">Tăng khoảng 5%</h6>
                </div>
            </div>
        </div>
    </div>
    {{-- Kết thúc cục tổng quan --}}

    {{-- Bắt đầu bảng nhân viên --}}
    <div class="col-lg-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Top 10 nhân viên thu nhập cao nhất</h4>
                <table class="table table-striped">
                    <thead>
                        <tr style="text-align: center">
                            <th> Ảnh </th>
                            <th> Họ Tên </th>
                            <th style="text-align: center"> Đã bán </th>
                            <th> Thu nhập </th>
                            <th> Đánh giá trung bình </th>
                            <th> Ngày tham gia </th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($top_admin as $admin)
                        <tr style="text-align: center">
                            <td class="py-1">
                                <img src="{{ asset("images/avatar/$admin->image") }}" alt="image">
                            </td>
                            <td style="text-align: left">
                                <a href="{{ route('admin.viewSeller', $admin->id) }}" style="text-decoration: none; color:black">
                                    {{ $admin->name }}
                                </a>
                            </td>
                            <td>
                                {{ $admin->number_order }} khóa
                            </td>
                            <td>
                                {{ number_format($admin->total_price, 0, '', ',') }} đ
                            </td>
                            <td>
                                {{ round($admin->number_rate,2) }}
                            </td>
                            <td>
                                {{ date('d-m-Y', strtotime($admin->created_at)) }}
                            </td>
                        </tr>
                        @endforeach
                        
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    {{-- kết thúc bảng nhân viên --}}

    

@stop

@section('js')
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
    <script src="{{ asset('js/admin/chart_demo.js') }}"></script>
@stop
