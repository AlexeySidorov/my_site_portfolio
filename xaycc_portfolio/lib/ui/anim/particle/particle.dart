import 'dart:math';

import 'package:flutter/material.dart';

class Particle {
  late final Color color;
  double xCoor = 0;
  double yCoor = 0;
  late final double size;
  late double xDirection;
  late double yDirection;
  static double widgetWidth = 0;
  static double widgetHeight = 0;
  static double connectDistance = 100.0;
  static double speedUp = 3.0;
  Random random = new Random();

  Particle(
    Color color,
    double xCoor,
    double yCoor,
    double size,
  ) {
    this.color = color;
    this.xCoor = xCoor;
    this.yCoor = yCoor;
    this.size = size;
  }

  bool isNear(Particle anotherParticle) {
    // Calculate the distance between two particles
    double distance = (this.xCoor - anotherParticle.xCoor) *
            (this.xCoor - anotherParticle.xCoor) +
        (this.yCoor - anotherParticle.yCoor) *
            (this.yCoor - anotherParticle.yCoor);

    return sqrt(distance) <= connectDistance;
  }

  void getRandomDirection() {
    xDirection = random.nextDouble() * speedUp;
    yDirection = random.nextDouble() * speedUp;
  }

  void move() {
    // Make the particle bounce when it reaches the borders
    if (this.xCoor + this.xDirection > Particle.widgetWidth ||
        this.xCoor + this.xDirection < 0) {
      this.xDirection = this.xDirection * (-1);
    }
    if (this.yCoor + this.yDirection > Particle.widgetHeight ||
        this.yCoor + this.yDirection < 0) {
      this.yDirection = this.yDirection * (-1);
    }
    this.xCoor += this.xDirection;
    this.yCoor += this.yDirection;
  }
}
