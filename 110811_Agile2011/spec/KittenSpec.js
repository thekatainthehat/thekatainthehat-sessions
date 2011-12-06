(function() {
  var Thing;
  Thing = (function() {
    function Thing() {}
    return Thing;
  })();
  describe("A kitten", function() {
    it("can be seen by us", function() {
      var albert, screen;
      albert = new Kitten({
        place: {
          x: 20,
          y: 42
        }
      });
      screen = {
        fillRect: jasmine.createSpy()
      };
      albert.draw(screen);
      return expect(screen.fillRect).toHaveBeenCalledWith(15, 37, 10, 10);
    });
    it("can drink milk from a saucer", function() {
      var juliet;
      juliet = new Kitten({
        place: {
          x: 10,
          y: 60
        }
      });
      juliet.saucer = new Saucer({
        place: {
          x: 40,
          y: 50
        },
        contains: "milk"
      });
      juliet.frolick();
      return expect(juliet.place).toEqual({
        x: 25,
        y: 55
      });
    });
    it("shoots balls of yarn once full of milk", function() {
      var josephSmith, passion, temple, _ref;
      temple = new Temple({
        place: {
          x: 200,
          y: 10
        }
      });
      temple.addYarnBall = jasmine.createSpy();
      josephSmith = new Kitten({
        temple: temple,
        place: temple.place,
        cute: true,
        holy: true,
        saucer: new Saucer({
          place: temple.place
        }),
        thing1: new Thing,
        thing2: new Thing
      });
      josephSmith.frolick();
      passion = [Math.sin];
      return (_ref = expect(temple.addYarnBall)).toHaveBeenCalledWith.apply(_ref, passion);
    });
    return it("can haz a cheezeburger", function() {
      var kitty;
      kitty = new Kitten({
        place: {
          x: 1,
          y: 2
        }
      });
      return expect(kitty.canHazCheezeBurger()).toEqual(true);
    });
  });
}).call(this);
