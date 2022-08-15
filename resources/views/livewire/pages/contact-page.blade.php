<main class="main">
    <section class="lienhe">
        <div class="container">
            <div class="lienhe-title text-center fs-1 fw-bold mb-5">
                <h2>Liên hệ</h2>
            </div>

            <div class="lienhe-main">
                @if ($message2 != '')
                <div class="alert alert-success">
                    {{$message2}}
                </div>
                @endif
                <form  method="post" wire:submit.prevent='sendMail'>
                    <div class="form-group">
                        <label for="" class="form-label">Họ và tên <span class="text-danger">*</span></label>
                        <input type="text" name="name" class="form-control" required wire:model="name">
                        @error('name') <span class="text-danger">{{ $message }}</span> @enderror
                    </div>
                    <div class="form-group mt-3">
                        <label for="" class="form-label">Email <span class="text-danger">*</span></label>
                        <input type="email" name="email" class="form-control" wire:model='email' required>
                        @error('email') <span class="text-danger">{{ $message }}</span> @enderror
                    </div>
                    <div class="form-group mt-3">
                        <label for="" class="form-label">Nội dung <span class="text-danger">*</span></label>
                        <textarea name="message" class="form-control" id="" wire:model='content' cols="30" rows="10"></textarea>
                        @error('content') <span class="text-danger">{{ $message }}</span> @enderror
                    </div>

                    <button class="btn btn-primary mt-4" type="submit">Liên hệ</button>
                </form>
            </div>
        </div>
    </section>
</main>
