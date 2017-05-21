Consideraciones:

	- El valor ingresado para obtener sus factores primos debe ser un numero entero positivo, >= 0. Para cualquier otro valor se lanza un 400 Bad Request

	- Si el parametro ingresado es 0 no se mostrara nada


Observaciones:

	- Me parecio muy limpia la forma en que ruby me permitio resolver la impresion de forma ascendente y descendente; pues con solo darle al array las instrucciones sort y reverse acompañadas con .join(,) automaticamente me devolvia los elementos del array en el formato deseado.

	- Me resulto un poco complicada la configuracion para poder testear los metodos post y get. Pero una vez logrado los test se pueden realizar de forma muy limpia y con pocas lineas de codigo.

	- En app.rb use el objeto settings para llamar a mis instancias de Factorizador e Impresora para evitar tener que crear una instancia de estos tanto en el metodo get como el post. Sin embargo, no se si esta bien utilizado.
