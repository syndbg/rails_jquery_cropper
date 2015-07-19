$(document).ready(function () {
  $('.cropper-example-1 > img').cropper({
    aspectRatio: 16 / 9,
    autoCropArea: 0.65,
    strict: false,
    guides: false,
    highlight: false,
    dragCrop: false,
    cropBoxMovable: false,
    cropBoxResizable: false
  });

  var $image = $('.cropper-example-3 > img'),
      replaced;

  $image.cropper();

  $('#replace-toggle').click(function () {
    var url = 'img/picture-2.jpg';

    if (replaced) {
      url = 'img/picture.jpg';
    }

    $image.cropper('replace', url);
    replaced = !replaced;
  });
});
