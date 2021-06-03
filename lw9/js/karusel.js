function run() {
  let width = 305; // ширина блока
  let count = 10; // количество блоков
  let visiblecount = 4; // количество видимых блоков
  let list = document.getElementById('list');
  let position = 0;
  
  document.getElementById('prev').onclick = function() {
    // сдвиг влево
    position += width;
    if(position == width)
    {
      position = -width * (count-visiblecount);
    }
    list.style.marginLeft = (position-20) + 'px';
  };
  
  document.getElementById('next').onclick = function() {
    // сдвиг вправо
    position -= width;
    if(position == -width * (count-visiblecount+1))
    {
      position = 0;
    }
    list.style.marginLeft = (position-20) + 'px';
  };
}

window.onload = () => {
  run();
}