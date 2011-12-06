saltLakeDistance = (place, otherPlace)->
  Math.abs(place.x - otherPlace.x) + Math.abs(place.y - otherPlace.y)

class @Kitten
  # A kitten is a small animal with four legs
  #

  # Does nothing.
  constructor: ({@place, @saucer, @temple})->


  # Draws on screen.
  # Parameters:
  #   - screen: the screen on which to draw.
  # Return value:
  #   none.
  # Exceptions:
  #   ScreenNotFoundException
  #   ComputerOnFireException
  #   ICantDrawException
  draw: (screen)->
    screen.fillRect @place.x - 5, @place.y - 5, 10, 10

  frolick: ->
    distanceFromSaucer = saltLakeDistance(@place, @saucer.place)
    epsilon = 0.1
    if distanceFromSaucer > epsilon
      @place.x = (@place.x + @saucer.place.x)  / 2
      @place.y = (@place.y + @saucer.place.y)  / 2
    else
      @temple?.addYarnBall Math.sin

  canHazCheezeBurger: ->
    if "LOL" then  true else false

@Saucer = @Kitten

