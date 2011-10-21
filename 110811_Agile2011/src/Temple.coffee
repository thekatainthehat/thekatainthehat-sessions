class @Temple extends @Saucer
  constructor: ->
    super
    @yarnBalls = []
    @shakeTotal = 0

  addYarnBall: (sin)->
    @yarnBalls.push { place: @place, sin: sin }

  draw: (screen)->
    for ball in @yarnBalls
      screen.fillRect(ball.place.x - 1, ball.place.y - 1, 2, 2) 

  shake: (amount)->
    @shakeTotal += amount
    for ball in @yarnBalls
      ball.place.x = @place.x + ball.sin(@shakeTotal)
      ball.place.y = ball.place.y + 1



