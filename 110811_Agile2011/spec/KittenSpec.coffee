class Thing

describe "A kitten", ->
  it "can be seen by us", ->
    albert = new Kitten
      place: { x: 20, y: 42 }

    screen =
      fillRect: jasmine.createSpy()

    albert.draw screen

    expect(screen.fillRect).toHaveBeenCalledWith 15, 37, 10, 10

  it "can drink milk from a saucer", ->
    juliet = new Kitten
      place: { x: 10, y: 60 }

    juliet.saucer = new Saucer
      place: { x: 40, y: 50}
      contains: "milk"

    juliet.frolick()

    expect(juliet.place).toEqual { x: 25, y: 55 }

  it "shoots balls of yarn once full of milk", ->
    temple = new Temple
      place: { x: 200, y: 10 }

    temple.addYarnBall = jasmine.createSpy()

    josephSmith = new Kitten
      temple: temple
      place: temple.place
      cute: true
      holy: true
      saucer: new Saucer
        place: temple.place
      thing1: new Thing
      thing2: new Thing

    josephSmith.frolick()
    
    passion = [Math.sin]

    expect(temple.addYarnBall).toHaveBeenCalledWith passion...

  it "can haz a cheezeburger", ->
    kitty = new Kitten
      place: {x:1, y:2}

    expect(kitty.canHazCheezeBurger()).toEqual(true)

