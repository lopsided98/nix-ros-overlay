
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, diagnostic-aggregator, diagnostic-msgs, diagnostic-updater, irobot-create-msgs, pythonPackages, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-turtlebot4-diagnostics";
  version = "2.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_robot-release/archive/release/jazzy/turtlebot4_diagnostics/2.0.1-2.tar.gz";
    name = "2.0.1-2.tar.gz";
    sha256 = "535d0d5135951ad936dbaf259bd4823c49d75bbecfac8d9646d5ec750d3c1a0d";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ diagnostic-aggregator diagnostic-msgs diagnostic-updater irobot-create-msgs rclpy sensor-msgs ];

  meta = {
    description = "Turtlebot4 Diagnostics";
    license = with lib.licenses; [ asl20 ];
  };
}
