# Preguntas de reflexión
### Taller de animaciones reutilizables en Flutter

**Estudiante:** Heyner Jesid Marin Ramirez
**Materia:** Desarrollo Aplicativos Móviles 2
**Profesor:** Francisco Samaca

---

**1. ¿Por qué estos widgets se construyen como StatefulWidget y no como StatelessWidget?**

Porque una animación cambia con el tiempo y necesita un estado interno que registre ese progreso. Un StatelessWidget se pinta una vez y no se actualiza solo. El StatefulWidget sí puede reconstruirse cada vez que el controlador avanza, que es exactamente lo que requiere una animación.

---

**2. ¿Qué papel cumple AnimationController dentro de una animación?**

Es el motor. Maneja un valor que va de 0.0 a 1.0 a lo largo del tiempo definido. Con `forward()` avanza y con `reverse()` regresa. Por sí solo no hace nada visual, pero ese valor es el que alimenta al Tween para producir opacidad, posición o escala real en pantalla.

---

**3. ¿Qué diferencia hay entre FadeTransition, SlideTransition y ScaleTransition?**

Cada uno anima una propiedad distinta del widget hijo. FadeTransition controla la opacidad, SlideTransition controla la posición y ScaleTransition controla el tamaño. Se pueden combinar, como en FadeSlideAnimation donde se usan los dos primeros al mismo tiempo para lograr un efecto más natural.

---

**4. ¿Para qué sirve el parámetro delay en una pantalla con múltiples elementos?**

Para que los elementos no aparezcan todos al mismo tiempo. Con delays distintos, cada elemento entra unos milisegundos después del anterior, lo que le da al usuario una dirección visual clara y hace que la pantalla se sienta más ordenada y trabajada.

---

**5. ¿Por qué es importante llamar dispose sobre el AnimationController?**

Porque si no se libera, el controlador sigue activo en memoria aunque el widget ya no exista. Eso genera consumo innecesario de recursos y puede lanzar errores en tiempo de ejecución. Llamar `dispose()` es simplemente decirle al sistema que ya puede limpiar lo que ese controlador estaba usando.