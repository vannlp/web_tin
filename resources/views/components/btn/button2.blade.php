<{{$typeBtn}} {{$attributes->merge([
    'class' => 'inline-flex bg-blue-400 items-center px-4 py-2 border border-transparent rounded-md font-semibold text-xs text-white uppercase tracking-widest hover:bg-gray-700 active:bg-gray-900 focus:outline-none focus:border-gray-900 focus:ring ring-gray-300disabled:opacity-25 transition ease-in-out duration-150'
])}}>
    {{$slot}}
</{{$typeBtn}}>