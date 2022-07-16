<div x-data={openMenu:false}>
    <header class="header">
        <div class="container">
            <div class="header-wrapper">
                <div class="header-menu-mobile" x-on:click="openMenu = true">
                    <i class="bi bi-list"></i>
                </div>

                <div class="header-left">
                    <a class="header-logo">
                        <img src="http://mauweb.monamedia.net/gamehub/wp-content/uploads/2019/04/logo-mona-300x75.png" alt="">
                    </a>
                    <ul class="header-list">
                        <li class="header-item">
                            <a href="#">Tin tức</a>
                        </li>
                        <li class="header-item">
                            <a href="#">Giftcode</a>
                        </li>
                        <li class="header-item">
                            <a href="#">Khám phá</a>
                        </li>
                        <li class="header-item">
                            <a href="#">Công nghệ</a>
                        </li>
                    </ul>
                </div>
                <div class="header-mxh">
                    <a href="#" class="header-mxh-item">
                        <i class="bi bi-facebook"></i>
                    </a>
                    <a href="#" class="header-mxh-item">
                        <i class="bi bi-facebook"></i>
                    </a>
                    <a href="#" class="header-mxh-item">
                        <i class="bi bi-facebook"></i>
                    </a>
                </div>

                <button class="header-search-btn-top header-search-btn">
                    <i class="bi bi-search"></i>
                </button>
            </div>
        </div>
    </header>
    <div class="menu-mobile" x-show="openMenu" x-transition>
        <ul class="menu-mobile-list">
            <li class="menu-mobile-item">
                <a href="#">Tin tức</a>
            </li>
            <li class="menu-mobile-item">
                <a href="#">Giftcode</a>
            </li>
            <li class="menu-mobile-item">
                <a href="#">Khám phá</a>
            </li>
            <li class="menu-mobile-item">
                <a href="#">Công nghệ</a>
            </li>
        </ul>
        <div class="menu-mobile-close" x-on:click="openMenu = false">
            <i class="bi bi-x-circle"></i>
        </div>
    </div>

    <nav class="container header-nav">
        <div class="header-cate">
            <ul class="header-cate-list">
                <li class="header-cate-item">
                    <a href="">Game online</a>
                </li>
                <li class="header-cate-item">
                    <a href="">Game online</a>
                </li>
                <li class="header-cate-item">
                    <a href="">Game online</a>
                </li>
                <li class="header-cate-item">
                    <a href="">Game online</a>
                </li>
            </ul>
    
            <div class="header-search" x-data="{search: false}">
                <button class="header-search-btn" x-on:click="search=!search">
                    <i class="bi bi-search"></i>
                </button>
    
                <div class="header-search-wrapper" x-show="search" x-transition>
                    <div class="header-search-top">
                        <input type="text" placeholder="Search..." wire:model="search" />
                        <button>Tìm kiếm</button>
                    </div>
                    <hr>
                    <div class="header-search-bottom">
                        {{-- <a class="header-search-content" href="#">
                            <img src="https://images.unsplash.com/photo-1657653462746-b4f36e2775e2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60" alt="">
                            <span>
                                Tiêu đề bài viết
                            </span>
                        </a>
                        <a class="header-search-content" href="#">
                            <img src="https://images.unsplash.com/photo-1657653462746-b4f36e2775e2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60" alt="">
                            <span>
                                Tiêu đề bài viết
                            </span>
                        </a> --}}
                        @foreach ($searchdata as $value)
                        <a class="header-search-content" href="#">
                            <img src="{{asset("{$value->image}")}}" alt="">
                            <span>
                                {{$value->title}}
                            </span>
                        </a>
                        @endforeach
                        <div class="text-center" wire:loading>
                            <div class="spinner-border text-success text-center" role="status" >
                                <span class="visually-hidden">Loading...</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </nav>
</div>
