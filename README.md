# 🧪 Test Repository

¡Bienvenido/a!

Este repositorio está pensado para realizar pruebas, practicar Git y aprender a trabajar en equipo utilizando **ramas (branches), commits y Pull Requests (PRs)**.

El objetivo es que puedas experimentar, modificar archivos y proponer mejoras sin afectar al resto del proyecto.

🔗 **Repositorio principal:**  
https://github.com/antazo/test

---

## 📁 1. ¿Qué puedes modificar?

Este repositorio tiene una estructura sencilla:

```text
test/
├── hola/
│   ├── index.html
│   ├── ...
│
├── Dockerfile
├── docker-compose.yml
└── README.md
```

**Tu zona de trabajo es exclusivamente la carpeta `hola/`.**

| Acción | ¿Permitida? |
|---|---|
| Crear archivos dentro de `hola/` | ✅ Sí |
| Modificar archivos dentro de `hola/` | ✅ Sí |
| Eliminar archivos dentro de `hola/` | ✅ Sí |
| Crear subcarpetas dentro de `hola/` | ✅ Sí |
| Modificar el Dockerfile | ❌ No |
| Modificar docker-compose.yml | ❌ No |
| Modificar el README.md principal | ❌ No |
| Modificar cualquier otro archivo fuera de `hola/` | ❌ No |

⚠️ **IMPORTANTE:** Cualquier Pull Request que incluya modificaciones fuera de `hola/` será rechazado, aunque también contenga cambios correctos dentro de esa carpeta.

Los commits directos a la rama `main` tampoco están permitidos. Todos los cambios deben proponerse mediante un Pull Request.

---

## 🚀 2. Primer paso: crear tu propio repositorio (Fork)

No debes trabajar directamente sobre el repositorio original.

Primero necesitas crear una copia independiente del proyecto. En GitHub esto se llama **Fork**.

1. Accede al repositorio:
   https://github.com/antazo/test
2. Haz clic en el botón **Fork**, situado en la parte superior derecha.
3. Selecciona tu cuenta personal de GitHub.
4. Espera a que GitHub termine de crear tu copia.

Ahora tendrás tu propio repositorio:

```text
Repositorio original:
https://github.com/antazo/test

Tu copia:
https://github.com/TU_USUARIO/test
```

A partir de ahora trabajarás sobre tu copia, no sobre la original.

---

## 💻 3. Descargar el proyecto (Clone)

Abre una terminal (PowerShell, CMD, Git Bash o la terminal de VS Code).

Ejecuta:

```bash
git clone https://github.com/TU_USUARIO/test.git
```

Recuerda sustituir `TU_USUARIO` por tu nombre de usuario de GitHub.

Entra en la carpeta descargada:

```bash
cd test
```

¡Ya tienes el proyecto en tu ordenador!

---

## 🌿 4. Crear una rama (Branch)

Antes de modificar nada, debes crear una rama nueva.

Una rama permite trabajar de forma independiente sin modificar la rama principal.

Ejecuta:

```bash
git switch -c feature/mi-primera-prueba
```

Por ejemplo, puedes utilizar nombres como:

```text
feature/mi-primera-prueba
feature/nueva-pagina
fix/corregir-enlace
docs/mi-documentacion
```

Intenta utilizar nombres descriptivos para que sepamos qué estás haciendo.

**Importante:** No trabajes directamente sobre `main`.

---

## ✏️ 5. Realizar tus modificaciones

Abre el proyecto con tu editor favorito, por ejemplo Visual Studio Code.

Modifica, crea o elimina los archivos que necesites, siempre dentro de:

```text
hola/
```

Por ejemplo, puedes crear:

```text
hola/
├── index.html
├── mi-primera-pagina.html
├── ejercicio.html
└── imagenes/
    └── ejemplo.png
```

Puedes hacer tantas modificaciones como necesites, siempre respetando las normas del repositorio.

---

## 📦 6. Guardar los cambios (Commit)

Cuando hayas terminado una parte de tu trabajo, debes guardar los cambios mediante un commit.

Primero, comprueba qué archivos has modificado:

```bash
git status
```

Puedes consultar los cambios concretos con:

```bash
git diff
```

Añade los archivos de tu trabajo:

```bash
git add hola/
```

Crea un commit:

```bash
git commit -m "feat: add my first HTML page"
```

Algunos ejemplos de mensajes de commit:

```text
feat: add a new HTML page
fix: correct navigation links
docs: update exercise instructions
style: improve page layout
```

Un commit es una fotografía de los cambios que has realizado en un momento determinado.

Puedes realizar varios commits mientras trabajas.

---

## ☁️ 7. Subir los cambios (Push)

Una vez guardados tus cambios, tienes que subir tu rama a tu repositorio personal de GitHub.

Ejecuta:

```bash
git push -u origin feature/mi-primera-prueba
```

Esto enviará tu rama a tu Fork.

**Todavía no has modificado el repositorio original.**

Solamente has subido tu trabajo a tu propia copia.

---

## 🔄 8. Crear un Pull Request (PR)

¡Llegamos a la parte importante!

Un Pull Request es una solicitud para que los cambios que has realizado en tu rama se incorporen al repositorio original.

Para crearlo:

1. Accede a tu repositorio personal en GitHub.
2. Entra en la sección **Pull requests**.
3. Haz clic en **New pull request**.
4. Selecciona **compare across forks** si es necesario.
5. Comprueba que las ramas de origen y destino son las correctas.

La configuración debe ser:

| Campo | Repositorio | Rama |
|---|---|---|
| Base repository | `antazo/test` | `main` |
| Head repository | `TU_USUARIO/test` | `feature/mi-primera-prueba` |

**¡MUY IMPORTANTE!**

Tu solicitud debe dirigirse siempre a:

```text
antazo/test → main
```

No debes dirigirla a otra rama ni a otro repositorio.

6. Escribe un título descriptivo.
7. Explica brevemente qué has realizado.
8. Haz clic en **Create pull request**.

¡Ya has enviado tu propuesta!

---

## 👨‍🏫 9. Revisión de los cambios

Una vez creado el Pull Request, se revisarán tus modificaciones.

Pueden ocurrir varias cosas:

- ✅ **Approved:** Los cambios son correctos y pueden incorporarse.
- 🔄 **Changes requested:** Hay que realizar algunas correcciones.
- ❌ **Rejected:** La propuesta no cumple las normas del repositorio.

Si se solicitan modificaciones, no necesitas crear otro Pull Request.

Simplemente vuelve a trabajar en la misma rama:

```bash
# Modifica los archivos necesarios

git add hola/
git commit -m "fix: apply requested changes"
git push
```

Los nuevos cambios aparecerán automáticamente en el Pull Request existente.

---

## 🔃 10. Mantener tu Fork actualizado

Mientras trabajas, el repositorio original puede recibir cambios de otros alumnos.

Para actualizar tu copia, puedes configurar el repositorio original como `upstream`.

Ejecuta una sola vez:

```bash
git remote add upstream https://github.com/antazo/test.git
```

Comprueba los repositorios configurados:

```bash
git remote -v
```

Cuando quieras actualizar tu rama `main`:

```bash
git switch main
git fetch upstream
git merge upstream/main
git push origin main
```

Después, vuelve a tu rama de trabajo:

```bash
git switch feature/mi-primera-prueba
```

Si necesitas incorporar los últimos cambios de `main` a tu rama:

```bash
git merge main
git push
```

---

## 📚 11. Comandos Git que debes conocer

Una pequeña chuleta para tener siempre a mano:

| Comando | ¿Para qué sirve? |
|---|---|
| `git status` | Ver el estado de tus archivos |
| `git branch` | Ver las ramas disponibles |
| `git switch main` | Cambiar a la rama main |
| `git switch -c nombre` | Crear una rama nueva |
| `git add hola/` | Preparar los cambios de hola/ |
| `git commit -m "mensaje"` | Guardar los cambios |
| `git log --oneline` | Consultar el historial |
| `git push` | Subir tus cambios |
| `git pull` | Descargar e integrar cambios |
| `git fetch` | Consultar cambios del remoto |
| `git diff` | Comparar modificaciones |

---

## ⚠️ 12. Normas finales

Antes de enviar tu Pull Request, comprueba lo siguiente:

- [ ] He creado mi propio Fork.
- [ ] Estoy trabajando en una rama diferente de `main`.
- [ ] Todos mis cambios están dentro de `hola/`.
- [ ] He guardado mis cambios mediante commits.
- [ ] He subido mi rama a mi Fork.
- [ ] Mi Pull Request tiene como destino `antazo/test → main`.
- [ ] He explicado qué cambios he realizado.

**Recuerda:**

Este repositorio es un espacio de aprendizaje y experimentación. Puedes probar, equivocarte, corregir y volver a intentarlo.

Lo importante es aprender a trabajar con Git y GitHub de forma ordenada y colaborativa.

¡A programar! 🚀