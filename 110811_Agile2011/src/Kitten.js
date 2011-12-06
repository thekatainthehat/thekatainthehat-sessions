(function() {
  var saltLakeDistance;
  saltLakeDistance = function(place, otherPlace) {
    return Math.abs(place.x - otherPlace.x) + Math.abs(place.y - otherPlace.y);
  };
  this.Kitten = (function() {
    function Kitten(_arg) {
      this.place = _arg.place, this.saucer = _arg.saucer, this.temple = _arg.temple;
    }
    Kitten.prototype.draw = function(screen) {
      return screen.fillRect(this.place.x - 5, this.place.y - 5, 10, 10);
    };
    Kitten.prototype.frolick = function() {
      var distanceFromSaucer, epsilon, _ref;
      distanceFromSaucer = saltLakeDistance(this.place, this.saucer.place);
      epsilon = 0.1;
      if (distanceFromSaucer > epsilon) {
        this.place.x = (this.place.x + this.saucer.place.x) / 2;
        return this.place.y = (this.place.y + this.saucer.place.y) / 2;
      } else {
        return (_ref = this.temple) != null ? _ref.addYarnBall(Math.sin) : void 0;
      }
    };
    Kitten.prototype.canHazCheezeBurger = function() {
      if ("LOL") {
        return true;
      } else {
        return false;
      }
    };
    return Kitten;
  })();
  this.Saucer = this.Kitten;
}).call(this);
