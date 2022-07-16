<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>

    <div class="py-12 flex-[1_1_80%] bg-white">
        <div class="max-w-full  px-5">
            <span>Hello word</span>
            <div class="max-w-lg mx-auto p-8" x-data="{ open: false }">
                <x-button @click="open = !open" class="bg-gray-600">Open</x-button>
                <div x-show="open">
                    <p>
                        Lorem, ipsum dolor sit amet consectetur adipisicing elit. Omnis illum distinctio veritatis ipsam
                        velit nulla, assumenda laboriosam ullam tenetur voluptatibus architecto impedit et quia
                        reprehenderit, molestias eligendi consequuntur porro totam.
                    </p>
                </div>
            </div>

            <livewire:counter :post="$listpost" />
        </div>
    </div>
</x-app-layout>