<nav class="flex-[1_1_20%] sticky top-0 bg-white py-5 border-r-slate-200 border-solid border-r-2">
    <ul class="">
        <x-admin.navitem title="Home" url="{{url('/')}}">
            <x-slot name="icon">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24"
                    stroke="currentColor" stroke-width="2">
                    <path stroke-linecap="round" stroke-linejoin="round"
                        d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6" />
                </svg>
            </x-slot>
        </x-admin.navitem>
        <x-admin.navitem title="Danh mục" url="#">
            <x-slot name="icon">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24"
                    stroke="currentColor" stroke-width="2">
                    <path stroke-linecap="round" stroke-linejoin="round"
                        d="M8 7v8a2 2 0 002 2h6M8 7V5a2 2 0 012-2h4.586a1 1 0 01.707.293l4.414 4.414a1 1 0 01.293.707V15a2 2 0 01-2 2h-2M8 7H6a2 2 0 00-2 2v10a2 2 0 002 2h8a2 2 0 002-2v-2" />
                </svg>
            </x-slot>
            <x-slot name="dropdown">
                <li>
                    <a href="{{url('/admin/category')}}">Danh sách</a>
                </li>
                <li>
                    <a href="{{url('/admin/category/create')}}">Thêm</a>
                </li>
            </x-slot>
        </x-admin.navitem>
        <x-admin.navitem title="Tin tức" url="#">
            <x-slot name="icon">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24"
                    stroke="currentColor" stroke-width="2">
                    <path stroke-linecap="round" stroke-linejoin="round"
                        d="M19 20H5a2 2 0 01-2-2V6a2 2 0 012-2h10a2 2 0 012 2v1m2 13a2 2 0 01-2-2V7m2 13a2 2 0 002-2V9a2 2 0 00-2-2h-2m-4-3H9M7 16h6M7 8h6v4H7V8z" />
                </svg>
            </x-slot>
            <x-slot name="dropdown">
                <li>
                    <a href="{{url('/admin/tin-tuc')}}">Danh sách</a>
                </li>
                <li>
                    <a href="{{url('/admin/tin-tuc/create')}}">Thêm</a>
                </li>
            </x-slot>
        </x-admin.navitem>

    </ul>
</nav>