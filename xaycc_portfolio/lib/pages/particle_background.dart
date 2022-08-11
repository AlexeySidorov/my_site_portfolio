import 'dart:math';
import 'package:flutter/material.dart';
import 'package:xaycc_portfolio/ui/anim/simple_animations_package.dart';
import 'package:xaycc_portfolio/ui/anim/particle/particles.dart' as particle;

class ParticleBackgroundPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned.fill(child: AnimatedBackground()),
      ],
    );
  }
}

class Particles extends StatefulWidget {
  final int numberOfParticles;

  Particles(this.numberOfParticles);

  @override
  _ParticlesState createState() => _ParticlesState();
}

class _ParticlesState extends State<Particles> {
  final Random random = Random();

  final List<ParticleModel> particles = [];

  @override
  void initState() {
    List.generate(widget.numberOfParticles, (index) {
      particles.add(ParticleModel(random));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Rendering(
      (context, time) {
        return CustomPaint(
          painter: ParticlePainter(particles, time),
        );
      },
      onTick: _simulateParticles,
      startTime: Duration(seconds: 30),
    );
  }

  _simulateParticles(Duration time) {
    particles.forEach((particle) => particle.maintainRestart(time));
  }
}

class ParticleModel {
  late Animatable tween;
  double size = 0;
  late AnimationProgress animationProgress;
  Random random;

  ParticleModel(this.random) {
    restart();
  }

  restart({Duration time = Duration.zero}) {
    final startPosition = Offset(-0.2 + 1.4 * random.nextDouble(), 1.2);
    final endPosition = Offset(-0.2 + 1.4 * random.nextDouble(), -0.2);
    final duration = Duration(milliseconds: 3000 + random.nextInt(6000));

    tween = MultiTrackTween([
      Track("x").add(
          duration, Tween(begin: startPosition.dx, end: endPosition.dx),
          curve: Curves.easeInOutSine),
      Track("y").add(
          duration, Tween(begin: startPosition.dy, end: endPosition.dy),
          curve: Curves.easeIn),
    ]);

    animationProgress = AnimationProgress(duration: duration, startTime: time);
    size = 0.2 + random.nextDouble() * 0.4;
  }

  maintainRestart(Duration time) {
    if (animationProgress.progress(time) == 1.0) {
      restart(time: time);
    }
  }
}

class ParticlePainter extends CustomPainter {
  List<ParticleModel> particles;
  Duration time;

  ParticlePainter(this.particles, this.time);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.white.withAlpha(50);

    particles.forEach((particle) {
      var progress = particle.animationProgress.progress(time);
      final animation = particle.tween.transform(progress);
      final position =
          Offset(animation["x"] * size.width, animation["y"] * size.height);
      canvas.drawCircle(position, size.width * 0.2 * particle.size, paint);
    });
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class AnimatedBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("color1").add(Duration(seconds: 5),
          ColorTween(begin: Color(0xff8a113a), end: Colors.lightBlue.shade900)),
      Track("color2").add(Duration(seconds: 5),
          ColorTween(begin: Color(0xff440216), end: Colors.blue.shade600))
    ]);

    return ControlledAnimation(
      (context, animation) {
        if (animation == null) return Container();

        var anim = animation as Map<String, dynamic>;
        return Container(
          child:
              AnimatedParticle(), //Comment this when not using particle_flutter
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [anim["color1"], anim["color2"]])),
        );
      },
      tween: tween,
      playback: Playback.MIRROR,
      duration: tween.duration,
    );
  }
}

class AnimatedParticle extends StatefulWidget {
  @override
  _AnimatedParticleState createState() => _AnimatedParticleState();
}

class _AnimatedParticleState extends State<AnimatedParticle> {
  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track("color1").add(Duration(seconds: 3),
          ColorTween(begin: Color(0xff8a113a), end: Colors.lightBlue.shade900)),
    ]);

    return ControlledAnimation((context, animation) {
      if (animation == null) return Container();

      var anim = animation as Map<String, dynamic>;
      return particle.Particles(150, anim["color1"]);
    }, tween: tween, playback: Playback.MIRROR, duration: tween.duration);
  }
}
