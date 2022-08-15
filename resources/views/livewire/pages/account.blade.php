<main class="main">
    <div class="container">
        <form action="{{route('account.put',['id' => auth()->user()->id])}}" method="post" enctype="multipart/form-data">
            @method('put')
            <div class="form-group accountPage-avatar">
                <div class="accountPage-imgs">
                    <img src="{{asset(Auth::user()->avatar)}}" alt="" id="output">
                    <button class="accountPage-avatar-btn" onclick="document.querySelector('#input-img').click()" type="button">
                        <i class="bi bi-pencil-fill"></i>
                    </button>
                    <input type="file" name="image"
                        onchange="document.getElementById('output').src = window.URL.createObjectURL(this.files[0])"
                     class="accountPage-input" hidden id="input-img">
                </div>
            </div>  
            <!-- Session Status -->
            @if (session('status') != null)
                <div class="my-3 alert alert-success">
                    {{session('status')}}
                </div>
            @endif
            <!-- Validation Errors -->
            @if (empty($errors))
                <ul class="my-3 alert alert-danger">
                    @foreach ($errors as $err)
                        <li>{{$err}}</li>
                    @endforeach
                </ul>
            @endif
            @csrf
            <div class="form-group mt-5">
                <label for="" class="form-lable">Họ và tên</label>
                <input type="text" class="form-control" name="name" value="{{Auth::user()->name}}">
            </div>
            <div class="form-group mt-2">
                <label for="" class="form-lable">Email</label>
                <input type="email" class="form-control" value="{{Auth::user()->email}}" readonly>
            </div>
            <div class="form-group mt-2">
                <label for="" class="form-lable">Username</label>
                <input type="text" class="form-control" value="{{Auth::user()->username}}" readonly>
            </div>

            <button type="submit"  class="btn btn-primary mt-3">Cập nhập</button>
        </form>
    </div>
</main>
