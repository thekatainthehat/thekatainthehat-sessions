ça = it
describe "une planète", ->
  ça "se pose là", ->
    xxx = new Planete
      position: { x: 100, y:50 }
      couleur: 'cyan'

    x =
      planetise: jasmine.createSpy()

    xxx.montre_toi_au x

    expect(x.planetise).toHaveBeenCalledWith { x: 100, y: 50 }, 'cyan'
