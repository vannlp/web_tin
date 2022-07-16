<?php

namespace App\Http\Livewire\News;

use Livewire\Component;
use App\Models\Post;
use Livewire\WithPagination;

class ListNews extends Component
{
    use WithPagination;
    public $post;
    public $search = '';
    public $pageNumber = 5;
    public $type;

    public function mount() {
        $this->post = new Post();
    }

    public function setType($name) {
        $this->type = $name;
        // $this->updated();
    }

    public function updatingSearch()
    {
        $this->resetPage();
    }

    public function getPost($typePost = null) {
        if($typePost && $this->search == '') {
            return $this->post->orderBy($typePost, 'desc')->paginate($this->pageNumber);
        }else{
            return $this->post->where('title', 'like','%'.$this->search.'%')->paginate($this->pageNumber);
        }
    }

    public function render()
    {
        return view('livewire.news.list-news', [
            'posts' => $this->getPost($this->type)
        ]);
    }
}
