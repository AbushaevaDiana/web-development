
    /* конфигурация */
    let width = 256; // ширина картинки
    let count = 4; // видимое количество изображений

    let list = carousel.querySelector('ul');
    let listElems = carousel.querySelectorAll('li');

    let position = 0; // положение ленты прокрутки

    carousel.querySelector('.prev').onclick = function() {
      // сдвиг влево
        position += width;
        position = Math.min(position, 0);
        if (position == 0){
          position = -width * (listElems.length - count);
        }
        list.style.marginLeft = position + 'px';

    };


    carousel.querySelector('.next').onclick = function() {
      // сдвиг вправо
      position -= width;
      position = Math.max(position, -width * (listElems.length - count));
      if (position == -width * (listElems.length - count)){
        position = 0;
      }
      list.style.marginLeft = position + 'px';
    };