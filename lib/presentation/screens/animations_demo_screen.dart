import 'package:flutter/material.dart';
import 'package:ecoscan_rewards/core/animations/fade_slide_animation.dart';
import 'package:ecoscan_rewards/core/animations/scale_tap_animation.dart';

class AnimationsDemoScreen extends StatelessWidget {
  const AnimationsDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo de animaciones'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FadeSlideAnimation(
              child: Text(
                'Bienvenido a la pantalla de prueba',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),

            SizedBox(height: 16),

            FadeSlideAnimation(
              delay: Duration(milliseconds: 150),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('Esta tarjeta aparece con desplazamiento suave.'),
                ),
              ),
            ),

            SizedBox(height: 16),

            ScaleTapAnimation(
              onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Animación de toque funcionando'),
                ),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 14),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  'Presióname',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            // ═══════════════════════════════════════════════════════════════
            // RETO 1 — Tres tarjetas con delays escalonados
            // ═══════════════════════════════════════════════════════════════
            SizedBox(height: 16),

            FadeSlideAnimation(
              delay: Duration(milliseconds: 0),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('Tarjeta 1 - Delay 0ms'),
                ),
              ),
            ),

            SizedBox(height: 16),

            FadeSlideAnimation(
              delay: Duration(milliseconds: 150),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('Tarjeta 2 - Delay 150ms'),
                ),
              ),
            ),

            SizedBox(height: 16),

            FadeSlideAnimation(
              delay: Duration(milliseconds: 300),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('Tarjeta 3 - Delay 300ms'),
                ),
              ),
            ),

            // ═══════════════════════════════════════════════════════════════
            // RETO 2 — Entrada desde la izquierda
            // ═══════════════════════════════════════════════════════════════
            SizedBox(height: 16),

            FadeSlideAnimation(
              beginOffset: const Offset(-0.3, 0),
              child: Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text('Tarjeta 4 - Entra desde la izquierda'),
                ),
              ),
            ),

            // ═══════════════════════════════════════════════════════════════
            // RETO 3 — Comparativa de duraciones
            // ═══════════════════════════════════════════════════════════════
            SizedBox(height: 16),

            FadeSlideAnimation(
              duration: Duration(milliseconds: 200),
              child: Text(
                'Duración 200ms - Rápida',
                style: TextStyle(fontSize: 16),
              ),
            ),

            SizedBox(height: 16),

            FadeSlideAnimation(
              duration: Duration(milliseconds: 450),
              child: Text(
                'Duración 450ms - Media',
                style: TextStyle(fontSize: 16),
              ),
            ),

            SizedBox(height: 16),

            FadeSlideAnimation(
              duration: Duration(milliseconds: 900),
              child: Text(
                'Duración 900ms - Lenta',
                style: TextStyle(fontSize: 16),
              ),
            ),

            // ═══════════════════════════════════════════════════════════════
            // RETO 4 — scaleFactor reducido
            // ═══════════════════════════════════════════════════════════════
            SizedBox(height: 16),

            ScaleTapAnimation(
              scaleFactor: 0.90,
              onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('scaleFactor 0.90 presionado'),
                ),
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 14),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  'scaleFactor 0.90',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            // ═══════════════════════════════════════════════════════════════
            // RETO 5 — ScaleTapAnimation en tarjeta completa
            // ═══════════════════════════════════════════════════════════════
            SizedBox(height: 16),

            ScaleTapAnimation(
              onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Tarjeta completa presionada'),
                ),
              ),
              child: Card(
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Título de la tarjeta',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Subtítulo descriptivo',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                              color: Colors.grey[600],
                            ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Esta es una tarjeta completa con múltiples elementos '
                        'que responde al tacto con una animación de escala.',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
