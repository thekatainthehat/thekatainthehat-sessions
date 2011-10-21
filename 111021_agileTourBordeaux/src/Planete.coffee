class @Planete
  constructor: ({@position,@couleur})->

  montre_toi_au: (x)->
    x.planetise @position, @couleur

