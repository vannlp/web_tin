<main class="main">
    <div class="container">
        <x-site.breadcrumb />

        <div class="row">
            <div class="col-xl-9 col-md-12">
                <h2 class="my-4">
                    {{$post->title}}
                </h2>

                <div class="detail-times">
                    <span class="me-3 d-inline-block">
                        {{date_format($post->created_at,"d \\t\\há\\n\\g m \\nă\\m Y")}}
                    </span>
                    <span class="me-3 d-inline-flex align-items-center">
                        <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" viewBox="0 0 20 20" fill="currentColor">
                            <path d="M10 12a2 2 0 100-4 2 2 0 000 4z" />
                            <path fill-rule="evenodd" d="M.458 10C1.732 5.943 5.522 3 10 3s8.268 2.943 9.542 7c-1.274 4.057-5.064 7-9.542 7S1.732 14.057.458 10zM14 10a4 4 0 11-8 0 4 4 0 018 0z" clip-rule="evenodd" />
                        </svg>
                        {{$post->views}}
                    </span>
                </div>

                <div class="detail-imgs p-4">
                    <img src="{{asset("{$post->image}")}}" alt="">
                </div>
                <div id="content" class="mt-4 px-3">
                    {!! $post->content !!}
                </div>

                <x-site.detail-slide />

                <x-site.comment />
            </div>
            <div class="col-xl-3 col-md-12">
                <x-site.sidebar titleSidebar="Tin mới" />
                <x-site.sidebar titleSidebar="Tin xem nhiều" />
            </div>
        </div>
    </div>
</main>
