# HELPERS

## Basics

Los helpers son métodos definidos en un sitio central, pero que pueden ser usados dentro de las rutas de los controladores y las vistas.

## Agregando helpers

Ejemplo:  *.rb files inside this directory e.g.:
`app/helpers/formatting.rb`.

Define el helper de esta forma:

```
helpers do
  def em(text)
    "<em>#{text}</em>"
  end
end
```

## Refresca

Después de crear un helper, toca reiniciar el servidor. Cada cambio en este archivo implica un reinicio.
