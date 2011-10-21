ça = it

describe "Un chaton", ->
  chaton = null

  beforeEach ->
    chaton = new Chaton
      position: { x: 50, y: 100 }
      vitesse: { x: 1, y: 1 }
    
  ça "laisse une trainee arc-en-ciel-de-sodium", ->
    cosmos =
      allume: jasmine.createSpy()
    chaton.montre_toi_au cosmos

    expect(cosmos.allume).toHaveBeenCalledWith { x: 50, y: 100 }, "yellow"

  ça "bouge en x", ->
    chaton.ouge()

    expect(chaton.position).toEqual { x: 51, y: 101 }

  ça "a des microfusées", ->
    chaton.みcrofuse(1)

    expect(chaton.vitesse).toEqual { x: 1, y: 2 }

  ça "a des bombes atoみques", ->
    ж =
      #couleur: 'cyan'
      position: { x: 62, y: 95 }
      couleur: 'cyan'
    chaton.coloにse ж
    #expect.
    expect(ж.couleur).toEqual 'yellow'

  ça "ne peut pas coloにser de trop loin", ->
    ж =
      couleur: 'cyan'
      position: { x: 500, y: 500 }
    chaton.coloにse ж
    expect(ж.couleur).toEqual 'cyan'
