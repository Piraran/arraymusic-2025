# Arraymusic 2025

Código para el concierto en el festival Open Ears 2025.

## Uso

### Configuración (env.scd)

1. Copiar el archivo `env.example.scd` y crear `env.scd`.

2. Configurarlo según se necesite.

3. Los samples de maracas se encuentran en [samples-pirarán](https://github.com/Piraran/samples-piraran). Descargar el repositorio y usar ese path. 

### AWKFSuperDirt

4. Asegurarse de que el quark esté instalado:

```supercollider
Quarks.install("https://github.com/Piraran/AKWFSuperDirt.git");
```

Es posible que sea necesario actuaizarlo en cuyo caso ir a `Language > Quarks` y luego dar click en el botón de `Check for updates`.


### Inicialización

5. Abrir `main.scd` y compilar el bloque de código. 

#### SuperDirt Socket

6. Instalar las dependencias de `npm` (si no se ha hecho):

```sh
npm i
```

7. Iniciar el socket:

```sh
npx superDirtSocket --superCollider 57120 -v --superDirtArgs ./customSuperDirtArgs.js
```
