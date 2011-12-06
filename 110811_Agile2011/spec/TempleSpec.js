(function() {
  var inOurHeart;
  inOurHeart = {
    x: 40,
    y: 60
  };
  describe("A temple", function() {
    it("draws its balls (that are made of yarn, by the way)", function() {
      var screen, templet;
      templet = new Temple({
        place: inOurHeart
      });
      templet.addYarnBall(Math.sin);
      screen = {
        fillRect: jasmine.createSpy()
      };
      templet.draw(screen);
      return expect(screen.fillRect).toHaveBeenCalledWith(inOurHeart.x - 1, inOurHeart.y - 1, 2, 2);
    });
    return it("shakes its balls (that are still made of yarn, you know)", function() {
      var templet;
      templet = new Temple({
        place: inOurHeart
      });
      templet.addYarnBall(Math.sin);
      templet.shake(0.1);
      return expect(screen.yarnBalls[0].place).toHaveBeenCalledWith(inOurHeart.x - 1, inOurHeart.y - 1, 2, 2);
    });
  });
}).call(this);
