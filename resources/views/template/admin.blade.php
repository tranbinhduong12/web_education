<!DOCTYPE html>
<html lang="vi">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/@mdi/font@6.5.95/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="{{ asset('css/vendor.bundle.base.css') }}">
    <link rel="stylesheet" href="{{ asset('css/style.css') }}">
    @yield('css')
    <link rel="shortcut icon" href="../../assets/images/favicon.ico" />
    <title>
      @yield('title')
    </title>
  </head>
  <body>
    <div class="container-scroller">
      
      <!-- partial:../../partials/navbar.html -->
      @include('partials.admin.header')
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:../../partials/sidebar.html -->
        @include('partials.admin.navbar')
        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
            {{-- Tên trang --}}
            <div class="page-header">
              <h3 id="page-title-replace" class="page-title">
                  <span class="page-title-icon bg-gradient-primary text-white me-2">
                      <i class="mdi mdi-border-color"></i>
                  </span>
              </h3>
          </div>
          {{-- Tên trang --}}
            @yield('content')
          </div>
          <!-- content-wrapper ends -->
          <!-- partial:../../partials/footer.html -->
          @include('partials.admin.footer')
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="{{ asset('js/vendor.bundle.base.js') }}"></script>
    <script src="{{ asset('js/off-canvas.js') }}"></script>
    <script src="{{ asset('js/hoverable-collapse.js') }}"></script>
    <script src="{{ asset('js/misc.js') }}"></script>
    @yield('js')
    <script>
      $(document).ready(function () {
        $('#page-title-replace').html($('#page-title-replace').html()+document.title);
      });
    </script>
    <!-- End plugin js for this page -->
  </body>
</html>