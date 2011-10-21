class @Chaton 
  constructor: ({@position,@vitesse})->
  montre_toi_au: (cosmos)->
    cosmos.allume @position, "yellow"
  ouge: ->
    @position.x += @vitesse.x
    @position.y += @vitesse.y
  みcrofuse: (zzzzx)->
    #@vitesse.y += zzzzx
    @vitesse.y += zzzzx
  coloにse: (ж)->
    if Math.abs(ж.position.x - @position.x) < 30 and 
       Math.abs(ж.position.y - @position.y) < 30
      ж.couleur = 'yellow'
