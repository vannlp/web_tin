<main class="main">
    <section class="topPosts">
        <div class="container">
            <div class="row">
                <div class="topPosts-left col-xl-6 col-sm-12">
                    <a class="topPosts-post-1" href="#">
                        <img src="http://mauweb.monamedia.net/gamehub/wp-content/uploads/2019/04/esport-10.jpg" alt="" class="topPosts-1-img">
                        <div class="topPosts-left-content">
                            <h4>DOTA 2: Top 4 tướng gánh team mạnh nhất ở bản 7.21D</h4>
                            <span>25/4/2022</span>
                        </div>
                    </a>
                </div>
                <div class="topPosts-right col-xl-6 col-sm-12">
                    <x-site.cate-toppost />
                    <x-site.cate-toppost />
                    <x-site.cate-toppost />
                    <x-site.cate-toppost />
                </div>
            </div>
        </div>
    </section>

    <section class="home-content">
        <div class="container">
            <div class="row">
                <div class="col-xl-9 col-md-12">
                    <x-site.list-new :posts="$posts" />

                    
                </div>
                <div class="col-xl-3 col-md-12">
                    <x-site.sidebar titleSidebar="Tin mới"  />
                    <x-site.sidebar titleSidebar="Tin xem nhiều" />
                </div>
            </div>
        </div>
    </section>
</main>
