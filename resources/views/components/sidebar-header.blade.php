<div class="sidebar-header">
    <div class="sidebar-logo">
        <a href="{{ route('dashboard') }}">
            <input type="hidden" name="global_light_logo" id="global_light_logo" value="{{ @globalAsset(setting('light_logo'), '154X38.webp') }}" />
            <input type="hidden" name="global_dark_logo" id="global_dark_logo" value="{{ @globalAsset(setting('dark_logo'), '154X38.webp') }}" />

            {{-- <img id="sidebar_full_logo" style="width: 80px; " class="full-logo setting-image logo_dark" src="{{  @globalAsset(setting('dark_logo'), '154X38.webp')  }}" alt="" /> --}}
            <img id="sidebar_full_logo" style="width: 120%; " class="full-logo setting-image logo_dark" src="{{ asset('images/logo-2.png') }}" alt="" />
            <img id="sidebar_full_logo" class="full-logo setting-image logo_lite" src="{{ asset('images/logo-2.png') }}" alt="" />

            <img class="half-logo" src="{{ globalAsset(setting('favicon'), '40X40.webp') }}" alt="" />
        </a>
    </div>

    <button class="half-expand-toggle sidebar-toggle">
        <img class="arrow_lite" src="{{ global_asset('backend') }}/assets/images/icons/collapse-arrow.svg" alt="" />
        <img class="arrow_dark" src="{{ global_asset('backend') }}/assets/images/icons/collapse-arrow2.svg" alt="" />
    </button>
    <button class="close-toggle sidebar-toggle">
        <img class="arrow_lite" src="{{ global_asset('backend') }}/assets/images/icons/collapse-arrow.svg" alt="" />
        <img class="arrow_dark" src="{{ global_asset('backend') }}/assets/images/icons/collapse-arrow2.svg" alt="" />
    </button>
</div>
