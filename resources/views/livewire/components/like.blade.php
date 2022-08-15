<div class="likes">
    <div class="like-wrapper">
        @if ($checkLike)
        <button class="btn like-btn {{$checkLike->like->class}}">
            {!! $checkLike->like->icon !!}
            <span>{{$checkLike->like->name}}</span>
        </button>
        @else
        <button class="btn like-btn">
            <i class="bi bi-hand-thumbs-up"></i>
            <span>Thích</span>
        </button>
        @endif
        <ul class="like-list">
            @foreach ($listLike as $item)
                <li class="like-item" wire:key="{{$item->id}}" id="like-{{$item->id}}">
                    <button class="like-button" title="{{$item->name}}" wire:click="add_like({{$item->id}})">
                        {!! $item->icon !!}
                    </button>
                </li>
            @endforeach
        </ul>

    </div>
    <span class="text-secondary d-inline-block ms-3 like-count" data-bs-toggle="modal" data-bs-target="#exampleModal">{{$likeActionCount}}</span>
    <div class="modal" tabindex="-1" id="exampleModal">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title">Cảm xúc</h5>
              <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                @foreach ($likeActionList as $likeAction)    
                    <div class="my-3" title="{{$likeAction->name}}">
                        <span>{!! $likeAction->icon !!}</span>
                        <span class="d-inline-block ms-3">{{$likeAction->countLike}}</span>
                    </div>
                @endforeach
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            </div>
          </div>
        </div>
    </div>
</div>
