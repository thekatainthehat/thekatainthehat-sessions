(function() {
  window.onload = function() {
    var canvas, i, powerKitties, saucer, screen, temple, update;
    canvas = document.getElementsByTagName("canvas")[0];
    screen = canvas.getContext("2d");
    saucer = new Saucer({
      place: {
        x: 240,
        y: 10
      },
      cute: false
    });
    temple = new Temple({
      place: saucer.place
    });
    powerKitties = (function() {
      var _results;
      _results = [];
      for (i = 0; i <= 10; i++) {
        _results.push(new Kitten({
          place: {
            x: 20,
            y: 20 + 40 * i
          },
          cute: true,
          color: 'white',
          saucer: saucer,
          temple: temple
        }));
      }
      return _results;
    })();
    update = function() {
      var kitty, milk, night, _i, _j, _len, _len2;
      night = 'rgba(0,0,0,0.2)';
      screen.fillStyle = night;
      screen.fillRect(0, 0, canvas.width, canvas.height);
      for (_i = 0, _len = powerKitties.length; _i < _len; _i++) {
        kitty = powerKitties[_i];
        kitty.frolick();
      }
      milk = 'white';
      screen.fillStyle = milk;
      for (_j = 0, _len2 = powerKitties.length; _j < _len2; _j++) {
        kitty = powerKitties[_j];
        kitty.draw(screen);
      }
      screen.fillStyle = 'blue';
      return temple.draw(screen);
    };
    return setInterval(update, 100);
  };
}).call(this);
