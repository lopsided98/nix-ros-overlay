
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, diagnostic-aggregator, diagnostic-msgs, diagnostic-updater, irobot-create-msgs, python3Packages, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-turtlebot4-diagnostics";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_robot-release/archive/release/humble/turtlebot4_diagnostics/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "a929412c77c4105858dbb4a91f4f4c81ccf8c8a9cecdff1d9c4f7cc8ea52db23";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ diagnostic-aggregator diagnostic-msgs diagnostic-updater irobot-create-msgs rclpy sensor-msgs ];

  meta = {
    description = "Turtlebot4 Diagnostics";
    license = with lib.licenses; [ asl20 ];
  };
}
