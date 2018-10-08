# Tabla de contenidos

0. **[Prefacio](#0-prefacio)**
   + 0.1. [Traducciones](#01-traducciones)
   + 0.2. [Preparación en sistemas Windows](#02-preparacion-en-sistemas-windows)
   + 0.3. [Atajos](#03-atajos)
1. **[Elige un idioma](#1-elige-un-idioma)**
2. **[Crea un monedero](#2-crea-un-monedero)**   
   + 2.1. [Crea un nuevo monedero](#21-crea-un-nuevo-monedero)
      + 2.1.1. [Añade una contraseña](#211-añade-una-contraseña)
      + 2.1.2. [Configuración del demonio](#212-configuración-del-demonio)
      + 2.1.3. [Ejecuta un nodo completo](#213-ejecuta-un-nodo-completo)
   + 2.2. [Restaura un monedero a partir de las claves o desde una semilla mnemotécnica](#22-restaura-un-monedero-a-partir-de-las-claves-o-desde-una-semilla-mnemotécnica)
      + 2.2.1. [Restaurando a partir de una semilla](#221-restaurando-a-partir-de-una-semilla)    
      + 2.2.2. [Restaurando desde claves](#222-restaurando-desde-claves)    
   + 2.3. [Abre un monedero desde archivo](#23-abre-un-monedero-desde-un-archivo)    
3. **[Envía Monero](#3-envía-monero)**    
   + 3.1. [Libreta de direcciones](#31-libreta-de-direcciones)
4. **[Recibe Monero](#4-recibe-monero)**    
5. **[Características avanzadas](#5-características-avanzadas)**    
   + 5.1. [Minería en solitario](#51-minería-en-solitario)    
   + 5.2. [Probar - verificar](#52-probar---verificar)    
      + 5.2.1. [Acredita una transacción](#521-prueba-una-transacción)    
      + 5.2.2. [Verifica una transacción](#522-verifica-una-transacción)    
   + 5.3. [RingDB compartido](#53-ringdb-compartido)
   + 5.4. [Firmar - verificar](#54-firmar---verificar)
      + 5.4.1. [Firma](#541-firma)
      + 5.4.2. [Verifica](#542-verifica)
6. **[Ajustes](#6-ajustes)**    
   + 6.1. [Semilla - claves](#61-semilla-y-claves)
7. **[Verificación de los binarios](#7-verificación-de-los-binarios)**
8. **[Problemas frecuentes y soluciones](#8-problemas-frecuentes-y-soluciones)**

# 0. Prefacio
Esta guía es código abierto y es una traducción de la guía original en inglés escrita por ErCiccione, de la comunidad de Monero. 
Si tienes sugerencias o quieres contribuir al desarrollo de esta guía, siéntete libre de abrir un nuevo _Pull Request_ con tus cambios o abriendo un nuevo _Issue_ en el repositorio de Github en el que se mantiene este documento: [github.com/monero-ecosystem/monero-GUI-guide](https://github.com/monero-ecosystem/monero-GUI-guide)

## 0.1. Traducciones
Este documento será localizado en diferentes idiomas. Puedes encontrar todas las traducciones posibles en [la sección dedicada en Github](https://github.com/monero-ecosystem/monero-GUI-guide/translations)

## 0.2. Preparación en sistemas Windows
Si estás en Windows:

+ Asegúrate de que tu antivirus no bloquea el programa.

+ En Windows, la primera vez que arranques el monedero deberás darle permisos a la aplicación para conectarse a la red a través de un _pop-up_ del UAC (del inglés, User Account Control o Control de Cuentas de Usuario) de Windows. 
Haz clic en la opción adecuada y pincha en `Permitir acceso` o `Allow access` en función del idioma de tu equipo.

![win firewall check](/media/win-firewall-check.png)

## 0.3. Atajos
Existen algunos atajos disponibles para hacer la experiencia de usuario con la interfaz gráfica un poco más sencilla:
&nbsp;

**En todos los sistemas operativos:**    
Presiona `Ctrl` para ver los atajos de cada página. Presiona `Ctrl + "atajo"` para ir a dicha página.
&nbsp;

**En Linux/Windows:**    
`Ctrl + Tab` -> Ir a la página siguiente    
`Ctrl + Shift + Tab` -> Ir a la página anterior
&nbsp;

**En macOS:**    
`Cmd + Tab` -> Ir a la página siguiente    
`Cmd + Shift + Tab` -> Ir a la página anterior

# 1. Elige un idioma

Extrae el paquete y haz clic en `monero-wallet-gui`.
Verás un listado con los idiomas disponibles como el que se ve a continuación.

![Language](/media/wizard_1-lang.png)

Haz clic en el idioma de tu elección para ir al siguiente paso.

# 2. Crea un monedero
![welcome](/media/wizard_2-options.png)

En esta página puede elegir entre tres métodos para acceder a una billetera y dos opciones para conectarse a la red:

**(1) Crea una nueva billetera:** Comienza el procedimiento para generar una nueva billetera. Elije esta opción si es la primera vez que usas Monero.    
**(2) Restaura la billetera a partir de claves o semillas mnemotécnicas:** Haz clic aquí si deseas recuperar una billetera preexistente utilizando la semilla mnemotécnica o las teclas.    
**(3) Abre una cartera desde archivo:** Elije esta opción para seleccionar una cartera preexistente entre tus archivos. Estas se identifican por usar la extensión `.keys`.    
**(4) Crear nuevo monedero _hardware_**: Crear un nuevo monedero desde un dispositivo _hardware_ (como Ledger).    
**(5) _Mainnet_:**  [Avanzado] Uso de la red principal de Monero.    
**(6) _Testnet_:**  [Avanzado] Marca esta casilla si quieres usar una red de desarrollo en lugar de la red principal. La _testnet_ está diseñada para permitir a los desarrolladores probar nuevas funciones que no están disponibles en la _mainnet_ o en la _stagenet_.    
**(7) _Stagenet_:** [Avanzado] Marca esta casilla si quieres utilizar una red alternativa a la red principal. La _stagenet_ imita las características de la _mainnet_ y está diseñada para permitir a los usuarios finales probar Monero sin riesgo de perder sus fondos.

## 2.1. Crea un nuevo monedero

En este paso se procede a crear un nuevo monedero.

![new](/media/wizard_3-create.png)

Los campos a rellenar son los siguientes:

**(1) Nombre:** Da un nombre a tu monedero (en este ejemplo se usa `testname`).    
**(2) Semilla mnemotécnica:** [IMPORTANTE] Anota tu [semilla mnemotécnica](https://getmonero.org/resources/moneropedia/mnemonicseed.html) y mantenla a salvo. Tu semilla es la **clave maestra** de tu monedero y podrás usarla para recuperar tus fundos.    
**(3) Wallet location:** Directorio de destino donde se almacenará el monedero.    

### 2.1.1 Añade una contraseña

Es importante que añadas una contraseña robusta para proteger tu monedero y evitar que un tercero con acceso al equipo pueda utilizar tus moneroj.
Ten en cuenta que si pierdes tu contraseña, solamente podrás recuperar tu monedero usando tu **semilla mnemotécnica**.

![add password](/media/wizard_4-pass.png)

### 2.1.2 Configuración del demonio

En esta ventana puede elegir si quieres ejecutar un nodo completo o usar uno remoto:

![daemon settings](/media/wizard_5-daemon-settings.png)

**(1) Iniciar el nodo en segundo plano:** Marca esta casilla para ejecutar un nodo completo y comenzar la sincronización de la cadena de bloques.    
**(2) Ubicación de la cadena de bloques (opcional):** Desde aquí se puede modificar el lugar de almacenamiento de la cadena de bloques.    
**(3) Nodo de arranque:** Para usar un nodo de arranque, introduce el _host_ y el puerto. Un nodo de arranque permite usar la billetera mientras se descarga la cadena de bloques conectándose a un nodo remoto. Se pueden encontrar los nodos remotos disponibles en [MoneroWorld](https://moneroworld.com/).    
**(4) Conéctate a un nodo remoto:** Marca esta casilla si deseas usar solo un nodo remoto sin descargar la cadena de bloques. Deberás facilitar el _host_ y el puerto del nodo remoto después de marcar la casilla.

### 2.1.3 Ejecuta un nodo completo

Al completar la configuración inicial, verás una ventana como esta:

![sync](/media/daemon-launch.png)

Si quieres crear un monedero normal usando un nodo completo personal, no necesitas hacer nada más que esperar a que la cuenta atrás termine y a que el nodo se sincronice completamente una vez lo haya hecho.

Si necesitas algún tipo de configuración adicional, como crear un monedero de solo lectura o añadir la _blockchain_ manualmente, comprueba la [Sección 6](#6-ajustes).

## 2.2 Restaura un monedero a partir de las claves o desde una semilla mnemotécnica

### 2.2.1 Restaurando a partir de una semilla

Restaurar desde tu semilla mnemotécnicas es la forma más fácil de recuperar tu monedero. 

![restore from seed](/media/wizard_6-restore-seed.png)

Necesitas facilitar la siguiente información:

**(1) Nombre de billetera:** Asigna un nombre a tu monedero (en este ejemplo se usa `testname`).    
**(2) Semillas mnemotécnicas:** Pega tu semilla formada por 25 (o 24) palabras.    
**(3) Altura de restauración (opcional):** Si conoces la altura de bloque en la que se creó tu monedero, puedes especificarla aquí para no tener que escanear toda la cadena de bloques en busca de tus fondos. Por ejemplo, si tu primera transacción se incluyó en el bloque `1350000`, puedes usar una altura ligeramente más baja (por ejemplo,` 1330000`) para que la monedero comience a escanear desde allí, ahorrando tiempo.    
**(4) Ubicación de la cartera:** Selecciona la carpeta de destino del monedero.

### 2.2.2 Restaurando desde claves

La restauración desde las claves es bastante sencilla y puede ser extremadamente útil, especialmente si mueves tu monedero desde un servicio en línea como MyMonero. 

![restore from key](/media/wizard_7-restore-keys.png)

Necesitas facilitar la siguiente información:

**(1) Nombre de billetera:** Asigna un nombre a tu monedero (en este ejemplo se usa `testname`).    
**(2) Dirección de la cuenta:** La dirección de la monedero que estás recuperando.    
**(3) Clave de vista:** Tu clave de vista privada (necesaria para poder verificar tus fondos).    
**(4) Clave de gasto:** Tu clave de gasto privado (necesaria para gastar tus fondos).    
**(5) Altura de restauración (opcional):** Si conoces la altura de bloque en la que se creó tu monedero, puedes especificarla aquí para no tener que escanear toda la cadena de bloques en busca de tus fondos. Por ejemplo, si tu primera transacción se incluyó en el bloque `1350000`, puedes usar una altura ligeramente más baja (por ejemplo,` 1330000`) para que la monedero comience a escanear desde allí, ahorrando tiempo.    
**(6) Ubicación de la cartera:** Seleccione la carpeta de destino de la cartera.    

Cuando todo esté listo, haz clic en la flecha derecha y luego en el botón `Usar Monero`.
En getmonero.org se pone a disposición de los usuarios una guía más avanzada: [[EN] Restoring wallet from keys](https://getmonero.org/resources/user-guides/restore_from_keys.html).

## 2.3 Abre un monedero desde un archivo
Después de hacer clic en esta opción aparecerá una nueva ventana en la que podrás elegir el fichero con extensión `.keys` de tu monedero.
Selecciónalo y pincha en la flecha derecha.

# 3. Envía Monero

La pestaña `Enviar` proporciona herramientas para crear transacciones salientes.

![send](/media/black_send.png)

A continuación, se describen los diferentes campos:

**(1) Cantidad:** Esta es la cantidad de Monero que quieres enviar.    
**(2) Prioridad de transacción:** Este es el nivel de prioridad que la transacción recibirá con respecto al conjunto de transacciones que esperan ser confirmadas. Cuanto más se pague, mayor será la prioridad de esta transacción para su inclusión en un bloque.
_Actualmente, es probable que el uso de la opción predeterminada o lenta la incluya en el próximo bloque._*    
**(3) Dirección:** Aquí es donde se ingresa la dirección de Monero a la que se envían los moneroj. La mejor práctica es copiar y pegar la dirección para evitar errores, acompañada de una comprobación visual de que la dirección pegada es correcta.    
**(4) ID de pago (opcional):** El ID de pago es un identificador adjunto a la transacción que estás a punto de enviar. A menudo, al enviar a un mercado de intercambio, te facilitarán una identificación de pago que tendrás que incluir aquí. Esta medida suele ser necesaria para que el receptor sepa que la transacción entrante es tuya.    
_Si olvidas agregar tu ID de pago, aún podrás recuperar tus fondos comunicándote con la parte a la que enviaste moneroj._    
**(5) Descripción (opcional):** Esta descripción es para un registro personal. Puedes agregar alguna información con respecto al motivo de la transacción para referencias futuras.    
**(6) Nivel de privacidad (tamaño del anillo):** Este control deslizante aumenta el tamaño de las firmas del anillo en la transacción. Los tamaños de anillo más altos pueden aumentar la privacidad de la transacción, pero también aumentan las tarifas. Se recomienda dejar el tamaño del anillo por defecto.
_Aprenda más sobre las firmas de anillos._    
**(7) Barrido no se puede mezclar:** Esta función permite deshacerse de las salidas en tu billetera que tienen cantidades extrañas como `0.000006839355`. Estos son inamovibles sin combinarlos con otra salida.
_La mayoría de los usuarios nunca necesitarán usar esta función._    
**(8) Firmar archivo tx:** Este botón te permite firmar un archivo de transacción que se hubiera creado en una monedero de solo lectura. 
_Esta forma de trabajar puede ser utilizada para firmar transacciones con claves privadas alojadas en dispositivos no conectados a internet, lo que reduce el impacto de una posible infección en el equipo que se conecta a la red._

## 3.1. Libreta de direcciones

La pestaña de la `Libreta de direcciones` te permite guardar direcciones con las que interactúas de forma frecuente. 
Este es un lugar conveniente desde el que copiar las direcciones cuando crees nuevas transacciones.

# 4. Recibe Monero

La pestaña de `Recibir` facilita herramientas para generar subdirecciones, preparar solicitudes de pago y monitorizar las transacciones entrantes.

![receive](/media/black_receive.png)

Los diferentes elementos que se pueden encontrar son los siguientes:

**(1) Direcciones:** Esta es una lista que incluye tu dirección principal y diferentes subdirecciones.
**(2) Crear nueva dirección:** Este botón te permite crear nuevas subdirecciones. Puedes crear tantas como quieras. _Obtén más información sobre las subdirecciones en [este enlace [EN]](https://monero.stackexchange.com/questions/3673/what-is-a-sub-address)._    
**(3) Renombrar:** Este botón te permite cambiar la etiqueta de una subdirección.    
**(4) Cantidad:** Se utiliza para crear una solicitud de pago, ingresando la cantidad de Monero que deseas recibir.    
**(5) Seguimiento:** Esta es una lista de transacciones entrantes.    
**(6) Código QR:** Este es un código QR que contiene incrustado en él la dirección seleccionada y, opcionalmente, la cantidad solicitada. Puede usarse como una forma de dar a otros su dirección de Monero escaneando el código.

# 5. Características avanzadas

## 5.1 Minería en solitario

![mining](/media/black_mining.png)

La pestaña de minería facilita un minero de CPU de un solo clic que está incluido en la propia interfaz gráfica.

**(1) Hilos de CPU :** Número de hilos de la CPU a utilizar para minar.    
**(2) Minería en segundo plano:** Haz clic en esta opción para permitir el minado en segundo plano experimental. Esta opción debería permitirte usar tu equipo mientras minas.    
**(3) Empezar a minar:** Arranca el minero.    
**(4) Parar de minar:** Para el minero.    

## 5.2. Probar - verificar

Esta pestaña facilita herramientas para acreditar un pago o validar la prueba facilitada de un pago. Este proceso es necesario en Monero porque los detalles de una transacción no están disponibles en la _blockchain_.

![Check payment](/media/black_prove-check.png)

### 5.2.1. Prueba una transacción

Esta acción generará una prueba de que se realizó un pago a una dirección determinada. 
Necesitas introducir la siguiente información:

**(1) ID de transacción:** Este es el ID de pago para el que se está creando la prueba. Puedes encontrar los detalles de la transacción seleccionando la pestaña `Historial` en el menú de la izquierda.    
**(2) Dirección:** Esta es la dirección a la que se quiere demostrar el pago.    
**(3) Mensaje (opcional):** Este es un mensaje opcional que se firmará junto con los detalles de la transacción. Si eliges incluir un mensaje, la otra parte también debe incluir exactamente el mismo mensaje para verificar tu prueba.    
**(4) Generar:** Haz clic aquí una vez que haya ingresado todos los detalles para generar la acreditación del pago.

### 5.2.2. Verifica una transacción

En esta sección podrás verificar la realización de un un pago. 
Necesitas introducir la siguiente información:

**(5) ID de transacción:** Este es el ID del pago que estás intentando verificar.    
**(6) Dirección:** Esta es la dirección de recepción del pago que estás intentando verificar.    
**(7) Mensaje (opcional):** Este es el mensaje opcional que puede haber sido incluido junto con la prueba.
**(8) Firma:** Esta es la firma generada para probar un pago.    
**(9) Verificar:** Haz clic aquí una vez que hayas introducido la información anterior para verificar si la prueba de la transacción facilitada es válida.

## 5.3. RingDB compartido

![shared ringdb](/media/black_sharedringdb.png)

## 5.4. Firmar - verificar

La pestaña de `Firmar/verificar` facilita herramientas para firmar un mensaje o fichero con tu clave privada y verificar la autenticidad del mensaje o fichero.

![sign/verify](/media/black_sign-verify.png)

### 5.4.1. Firma

**(1) Mensaje:** Aquí es donde se introduce un mensaje para firmar.    
**(2) Mensaje del archivo:** Aquí se puede elegir un archivo para firmar. Haz clic en `Examinar` para navegar por el sistema de archivos.    
**(3) Firma:** Aquí es donde se mostrará la firma única una vez que se haya hecho clic en el botón de `Firmar` de los apartados anteriores. La firma del mensaje o archivo que se haya facilitado es realizada con la clave privada del monedero. Esta firma se pueded entregar como prueba junto con el mensaje o archivo en cuestión.

### 5.4.2. Verifica

**(4) Verificar mensaje:** Aquí es donde se coloca un mensaje que ha sido firmado.    
**(5) Verificar archivo:** Aquí es donde se ingresa la ruta a un archivo que se ha firmado. Haz clic en `Examinar` para navegar por el sistema de archivos.    
**(6) Dirección:** Aquí es donde se introduce la dirección pública de Monero del firmante.    
**(7) Firma:** Aquí es donde se introduce la firma que está verificando. Una vez que se haya ingresado toda la información requerida, es necesario hacer clic en el botón de `Verificar`. Una ventana emergente certificará si la firma es válida.

# 6. Ajustes

La pestaña de `Ajustes` facilita herramientas para configurar las diferentes opciones de la aplicación.

![settings](/media/black_settings.png)

**(1) Cerrar billetera:** Cierra el monedero y reinicia el asistente de creación.    
**(2) Crear cartera solo de vista:** Crea una versión de solo visualización de la cartera actual. Se te solicitará un nombre de archivo y una contraseña para cifrarla.    
**(3) Volver a escanear el saldo de la billetera:** Haz un nuevo escaneo de las salidas gastadas.    
**(4) Cambiar contraseña:** Cambia la contraseña de su billetera.    
**(5) Nodo local:** Usa un nodo local y descarga la _blockchain_. Puedes usar un nodo de arranque hasta que tu cadena de bloques esté sincronizada.    
**(6) Nodo remoto:** Usa un nodo remoto sin descargar la cadena de bloques.    
**(7) Dirección de inicio / nodo remoto:** Introduce el nombre del _host_ o la dirección IP del nodo remoto.    
**(8) Bootstrap / Remote Node Port:** Introduce el puerto del nodo remoto.    
**(9) Iniciar / Detener nodo local:** Dependiendo de su estado actual, inicia o detén el nodo local.    
**(10) Mostrar estado:** Muestra el estado actual de tu nodo.    
**(11) Ubicación de la cadena de bloques:** Introduce manualmente una ruta no predeterminada en el sistema a la cadena de bloques.    
**(12) Cambiar ubicación:** Usa la interfaz gráfica para introducir una ruta no predeterminada en el sistema a la cadena de bloques.    
**(13) Mostrar avanzado:** Marca esta casilla para mostrar las opciones avanzadas (indicadores de arranque o inicio de sesión en el nodo).    
**(14) Indicadores de arranque / Inicio de sesión en el nodo:** Al usar un nodo local, será aquí donde puedas introducir opciones de línea de comando adicionales. Cuando use un nodo remoto, podrás facilitar un nombre de usuario y contraseña en caso de que se requiera autenticación.    
**(15) Decoraciones personalizadas:** Marca esta casilla para mostrar las decoraciones personalizadas de Monero.    
**(16) Nivel de registro:** Cambia la verbosidad de los registros de depuración.    
**(17) Categorías de registro:** Agrega categorías específicas a los registros de depuración.    
**(18) Altura de creación de cartera:** Cambia la altura de bloque a la que volverá a escanear la billetera. Haz clic en `Guardar` para que los cambios surtan efecto.

## 6.1. Semilla y claves

La pestaña `Semillas y claves` muestra la información mnemotécnicas de su billetera, así como su clave de vista secreta, clave de vista pública, clave de gasto secreta y clave de gasto público.

![seed-keys](/media/black_seed-keys.png)

A continuación, se describen brevemente algunas de las opciones presentes en esta pestaña:

**(1) Semilla mnemotécnica:** [**NO comparta su semilla mnemotécnica con nadie*. Guarde una copia de forma segura.] La semilla mnemotécnica es una frase de 25 palabras que contiene toda la información necesaria para ver y gastar fondos. _Obtén más información sobre las semillas mnemotécnicas en Monero en [este enlace [EN]](https://getmonero.org/resources/moneropedia/mnemonicseed.html)._    
**(2) Clave de vista secreta:** Las claves de vista secretas permiten al titular ver las transacciones entrantes de su monedero, pero no las salientes. A veces esta funcionalidad es útil para permitir que un tercero pueda auditar y comprobar las transacciones entrantes.    
**(3) Clave de vista pública:** Las claves de vista públicas se usan para la creación de direcciones ocultas. _Obtén más información sobre las claves en [este enlace [EN]](https://getmonero.org/resources/moneropedia/viewkey.html)._    
**(4) Clave secreta de gastos:** [**NO comparta su clave secreta de gastos con nadie.**] La clave de gasto secreta se usa para firmar transacciones y debe protegerse con un nivel de seguridad equivalente al de su semilla mnemotécnica.    
**(5) Clave de gasto público:** La red utiliza la clave de gasto pública para verificar la firma de la imagen de clave que se genera cuando realiza una transacción. Esto evita la presencia del doble gasto ya que la red obliga a que una clave de imagen solo pueda gastarse una vez. _Obtén más información sobre las claves de gasto en [este enlace](https://getmonero.org/resources/moneropedia/spendkey.html)._    
**(6) Exportar billetera gastable:** [**NO compartas tu código QR del monedero con nadie. Esto puede usarse como una semilla mnemotécnicas para recuperar su billetera.**] Esta opción crea un código QR que contiene todas sus claves.    
**(7) Exportar solo billetera vista:** Esta opción crea un código QR que contiene solo las claves para ver las transacciones que esta billetera envía o recibe, pero no puede crear y generar transacciones.    

# 7. Verificación de los binarios

Debes asegurarte de que los ficheros que has descargado se corresponden con los ficheros oficiales. 
Puedes utilizar [esta sencilla guía ilustrada](https://getmonero.org/resources/user-guides/verification-windows-beginner.html) para sistemas Windows.

# 8. Problemas frecuentes y soluciones

+ **[[EN] He perdido (no estoy viendo) una transacción entrante en la interfaz gráfica (balance cero)](https://monero.stackexchange.com/questions/6640/i-am-missing-not-seeing-a-transaction-to-in-the-gui-zero-balance)**
+ **[[EN] Uso la interfaz gráfica y mi demonio ha dejado de arrancar](https://monero.stackexchange.com/questions/6825/i-am-using-the-gui-and-my-daemon-doesnt-start-anymore)**
+ **[[EN] La transacción está bloqueada como _pendiente_ en la interfaz gráfica](https://monero.stackexchange.com/questions/6649/transaction-stuck-as-pending-in-the-gui)**
+ **[[EN] La interfaz gráfica parece que tiene errores o se congela todo el rato](https://monero.stackexchange.com/questions/6651/my-gui-feels-buggy-freezes-all-the-time)**
+ **[[EN] Mi nombre contiene caracteres especiales (non-ASCII) (e.g. é, ø, â, Ö) y no puedo crear un monedero en la interfaz gráfica](https://monero.stackexchange.com/questions/6823/my-name-contains-a-special-non-ascii-character-e-g-%c3%a9-%c3%b8-%c3%a2-%c3%96-and-i-cant-c)**
+ **[[EN] La interfaz gráfica usa todo mi ancho de banda y no puedo navegar o usar otras aplicaciones que requieran conexión a internet](https://monero.stackexchange.com/questions/6653/the-gui-uses-all-my-bandwidth-and-i-cant-browse-anymore-or-use-another-applicat)**
+ **[[EN] ¿Cómo puedo mover la cadena de bloques (`data.mdb`) a un directorio diferente durante (o después) de la sincronización inicial sin perder los avances?](https://monero.stackexchange.com/questions/7225/how-do-i-move-the-blockchain-data-mdb-to-a-different-directory-during-or-afte)**
+ **[[EN] ¿Cómo puedo cambiar el idioma de las 25 palabras de la semilla mnemotécnica en la interfaz gráfica y en la terminal?](https://monero.stackexchange.com/questions/7373/how-do-i-change-the-language-of-the-25-word-mnemonic-seed-in-the-gui/)**
+ **[[EN] Mi cadena de bloques está bloqueada, ¿cómo la desatasco?](https://monero.stackexchange.com/questions/4462/my-blockchain-is-stuck-how-do-i-unstuck-it)**
+ **[[EN] Estoy usando un nodo remoto pero, ¿por qué sigue sincronizándose la cadena de bloques en la interfaz gráfica?](https://monero.stackexchange.com/questions/6324/using-remote-node-still-syncs-blockchain)**
+ **Utilizo una pantalla de alta resolución y la interfaz gráfica parece extremadamente pequeña**    
Este problema será resuelto próximamente, pero se puede solucionar temporalmente en Windows: haz clic con botón derecho en `monero-wallet-gui.exe`, selecciona `Propiedades` --> `Compatibilidad`. En la opción de alta resolución (`high DPI`), cambia el valor de `Aplicación` a `Sistema` o viceversa.
