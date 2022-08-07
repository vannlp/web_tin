<main class="main">
    {{-- The best athlete wants his opponent at his best. --}}
    <x-slot name="title">
        Trang chủ website tin tức
    </x-slot>

    <section class="banner">
        <div class="container">
            <div class="row">
                <div class="col-xl-9 col-lg-9 col-sm-12">
                    <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-inner">
                            @foreach ($hostPosts as $key => $item)
                            <div class="carousel-item {{$key == 0 ? 'active':''}}">
                                <a href="{{url("/tin/{$item->slug}")}}" class="banner-link">
                                    <img src="{{asset($item->image)}}" class="banner-img" alt="">
                                    <div class="banner-desc">
                                        <span class="banner-category">
                                            {{$item->category->name}}
                                        </span>
                                        <h3 class="banner-title">
                                            {{$item->title}}
                                        </h3>
                                    </div>
                                </a>
                              </div>
                            @endforeach
                          
                          
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                          <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                          <span class="carousel-control-next-icon" aria-hidden="true"></span>
                          <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 banner-right">
                    <img src="http://mauweb.monamedia.net/gamehub/wp-content/uploads/2019/04/qc-2.jpg" alt="">
                </div>
            </div>
        </div>
    </section>

    <section class="home-content">
        <div class="container">
            <div class="row">
                <div class="col-xl-9 col-md-12">
                    <x-site.list-new :posts="$posts" />
                    <br>
                    
                    {{$posts->links()}}
                </div>
                <div class="col-xl-3 col-md-12">
                    <x-site.sidebar titleSidebar="Tin mới" :data="$postNew" />
                    <x-site.sidebar titleSidebar="Tin xem nhiều" :data="$postView" />
                </div>
            </div>
        </div>
    </section>
</main>