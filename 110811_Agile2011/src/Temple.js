(function() {
  var __hasProp = Object.prototype.hasOwnProperty, __extends = function(child, parent) {
    for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; }
    function ctor() { this.constructor = child; }
    ctor.prototype = parent.prototype;
    child.prototype = new ctor;
    child.__super__ = parent.prototype;
    return child;
  };
  this.Temple = (function() {
    __extends(Temple, this.Saucer);
    function Temple() {
      Temple.__super__.constructor.apply(this, arguments);
      this.yarnBalls = [];
      this.shakeTotal = 0;
    }
    Temple.prototype.addYarnBall = function(sin) {
      return this.yarnBalls.push({
        place: this.place,
        sin: sin
      });
    };
    Temple.prototype.draw = function(screen) {
      var ball, _i, _len, _ref, _results;
      _ref = this.yarnBalls;
      _results = [];
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        ball = _ref[_i];
        _results.push(screen.fillRect(ball.place.x - 1, ball.place.y - 1, 2, 2));
      }
      return _results;
    };
    Temple.prototype.shake = function(amount) {
      var ball, _i, _len, _ref, _results;
      this.shakeTotal += amount;
      _ref = this.yarnBalls;
      _results = [];
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        ball = _ref[_i];
        ball.place.x = this.place.x + ball.sin(this.shakeTotal);
        _results.push(ball.place.y = ball.place.y + 1);
      }
      return _results;
    };
    return Temple;
  }).call(this);
}).call(this);
