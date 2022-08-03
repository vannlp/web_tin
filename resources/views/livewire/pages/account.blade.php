<main class="main">
    <div class="container">
        <form action="#" method="post">
            <div class="form-group accountPage-avatar">
                <div class="accountPage-imgs">
                    <img src="{{asset(Auth::user()->avatar)}}" alt="" id="output">
                    <button class="accountPage-avatar-btn" onclick="document.querySelector('#input-img').click()" type="button">
                        <i class="bi bi-pencil-fill"></i>
                    </button>
                    <input type="file"
                        onchange="document.getElementById('output').src = window.URL.createObjectURL(this.files[0])"
                     class="accountPage-input" hidden id="input-img">
                </div>
            </div>  
            <div class="form-group mt-5">
                <label for="" class="form-lable">Họ và tên</label>
                <input type="text" class="form-control" value="Phan Tường Văn">
            </div>
            <div class="form-group mt-2">
                <label for="" class="form-lable">Email</label>
                <input type="email" class="form-control" value="Phanvan0322@gmail.com" readonly>
            </div>
            <div class="form-group mt-2">
                <label for="" class="form-lable">Username</label>
                <input type="text" class="form-control" value="Phanvan0322" readonly>
            </div>

            <button type="submit"  class="btn btn-primary mt-3">Cập nhập</button>
        </form>
    </div>
</main>
