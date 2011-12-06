inOurHeart =
  x: 40
  y: 60

describe "A temple", ->
  it "draws its balls (that are made of yarn, by the way)", ->

    templet = new Temple
      place: inOurHeart
    
    templet.addYarnBall Math.sin

    screen =
      fillRect: jasmine.createSpy()

    templet.draw screen

    expect(screen.fillRect).toHaveBeenCalledWith inOurHeart.x - 1, inOurHeart.y - 1, 2, 2

  it "shakes its balls (that are still made of yarn, you know)", ->
    templet = new Temple
      place: inOurHeart

    templet.addYarnBall Math.sin

    templet.shake(0.1)
  
    expect(templet.yarnBalls[0].place).toEqual(
      { x: inOurHeart.x + 5 * Math.sin(0.1), y: inOurHeart.y + 1 }

