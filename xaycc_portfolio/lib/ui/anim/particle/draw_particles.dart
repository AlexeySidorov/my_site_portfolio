import 'package:flutter/material.dart';
import 'package:xaycc_portfolio/ui/anim/particle/particle.dart';

class DisplayPoints extends CustomPainter {
  final List<Particle>? particlesList;

  DisplayPoints({
    this.particlesList,
  });

  @override
  void paint(Canvas canvas, Size size) {
    if (particlesList == null) return;

    var particles = particlesList as List<Particle>;

    Paint line = Paint();
    line.strokeCap = StrokeCap.round;
    line.color = particles.elementAt(0).color;

    // Draw all the particles
    for (var particle in particles) {
      line.strokeWidth = particle.size;
      Offset center = Offset(particle.xCoor, particle.yCoor);
      line.style = PaintingStyle.fill;
      canvas.drawCircle(center, particle.size, line);
    }

    // Draw the connect line
    for (int i = 0; i < particles.length; i++) {
      for (int j = i + 1; j < particles.length; j++) {
        Particle particle = particles.elementAt(i);
        Particle anotherParticle = particles.elementAt(j);
        if (particle.isNear(anotherParticle)) {
          Offset firstParticle = Offset(particle.xCoor, particle.yCoor);
          Offset secondParticle =
              Offset(anotherParticle.xCoor, anotherParticle.yCoor);
          line.strokeWidth = 2.0;
          canvas.drawLine(firstParticle, secondParticle, line);
        }
      }
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
