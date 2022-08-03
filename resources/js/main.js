
const Slider = document.querySelector("#detail-cate-slider")

if(Slider) {
  const slider = $('#detail-cate-slider')
    slider.slick({
        infinite: true,
        slidesToShow: 3,
        slidesToScroll: 3,
        prevArrow: `<button type="button" class="slick-prev">
        <i class="bi bi-chevron-compact-left"></i>
        </button>`,
        nextArrow: `<button type="button" class="slick-next">
        <i class="bi bi-chevron-compact-right"></i>
        </button>`
      })
}