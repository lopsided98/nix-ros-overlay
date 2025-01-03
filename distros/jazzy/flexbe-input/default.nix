
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, flexbe-core, flexbe-msgs, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-flexbe-input";
  version = "3.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/flexbe_behavior_engine-release/archive/release/jazzy/flexbe_input/3.0.3-1.tar.gz";
    name = "3.0.3-1.tar.gz";
    sha256 = "988d41c3bb56a7b37031a1e5285de3af1ac0da53724b0e51d30ea309193f6360";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ flexbe-core flexbe-msgs rclpy ];

  meta = {
    description = "flexbe_input enables to send data to onboard behavior when required.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
