<div class="comment-block">
    <h3 class="commnet-title">
        <span>
            Bình luận bài viết
        </span>
    </h3>

    <form action="" method="post" class="my-4">
        <div class="form-group mb-3">
            <label for="" class="form-lable">Nhập bình luận</label>
            <textarea name="message" class="form-control" id="" cols="30" rows="10" wire:model="comment"></textarea>
        </div>
        <div class="d-flex align-center">
            <button class="btn btn-primary " type="button" wire:click.lazy="insertComment">Gửi</button>
            <div class="spinner-border text-success text-center ms-3" wire:loading wire:target="insertComment" role="status" >
                <span class="visually-hidden">Loading...</span>
            </div>
        </div>

    </form>

    <div class="comment-wrapper">
        @foreach ($comments as $key => $item)    
        <div class="comment-item" x-data="{ open: false }" wire:key="{{$item->id}}">
            <div class="comment-item-top">
                <div class="comment-item-avata">
                    <img src="{{asset($item->user->avatar)}}" alt="">
                </div>
                <div class="comment-item-names">
                    <span>{{$item->user->name}}</span><br>
                    <span>{{date_format($item->created_at,"d/m/Y")}}</span>
                </div>
            </div>
            <div class="comment-item-content">
                {{$item->content}}
            </div>
            <div class="comment-item-tl">
                <span >Thích</span>
                <span @click="open = !open">Trả lời</span>
            </div>
            <form action="" method="post" class="ms-4 mt-3" x-show="open" wire:submit.prevent="insertCommentLevel({{$item->id}})">
                <input type="text" class="form-control form-control-sm" wire:model="commentlevel" placeholder="Nhập bình luận">
            </form>

            <?php
                if($this->checkComment[$key]['displayFull'] === false){
                    $item3 = \App\Models\Comment::where('parent_id', $item->id)->limit(2)->get();
                }elseif($this->checkComment[$key]['displayFull'] === true){
                    $item3 = \App\Models\Comment::where('parent_id', $item->id)->get();
                }
                
            ?>

            @foreach ($item3 as $item2)
            <div class="commmet-item-level2" wire:key="{{$item2->id}}">
                <div class="comment-item-top">
                    <div class="comment-item-avata">
                        <img src="{{asset($item2->user->avatar)}}" alt="">
                    </div>
                    <div class="comment-item-names">
                        <span>{{$item2->user->name}}</span><br>
                        <span>{{date_format($item2->created_at,"d/m/Y")}}</span>
                    </div>
                </div>
                <div class="comment-item-content">
                    {{$item2->content}}
                </div>
            </div>
            @endforeach
            <div class="comment-item-tl">
                <span wire:click="getallComment({{$key}})">Hiển thị thêm</span>
            </div>
        </div>
        @endforeach
        <div class="mt-4">
            {{$comments->links()}}
        </div>
    </div>
</div>
