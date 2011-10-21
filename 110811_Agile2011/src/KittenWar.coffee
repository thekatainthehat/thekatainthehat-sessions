window.onload = ->
  canvas = document.getElementsByTagName("canvas")[0]

  screen = canvas.getContext "2d"

  saucer = new Saucer
    place: {x: 240, y: 10 }
    cute: false
  
  temple = new Temple
    place: saucer.place

  powerKitties =
    ((new Kitten
      place: {x: 20, y: 20 + 40 * i}
      cute: true
      color: 'white'
      saucer: saucer
      temple: temple) for i in [0..10])

  update = ->
    night = 'rgba(0,0,0,0.2)'
    screen.fillStyle = night
    screen.fillRect 0, 0, canvas.width, canvas.height

    kitty.frolick() for kitty in powerKitties

    milk = 'white'
    screen.fillStyle = milk
    kitty.draw(screen) for kitty in powerKitties

    screen.fillStyle = 'blue'
    temple.draw(screen)

  setInterval update, 100
