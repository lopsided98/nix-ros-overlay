
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, diagnostic-aggregator, diagnostic-msgs, diagnostic-updater, irobot-create-msgs, pythonPackages, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-galactic-turtlebot4-diagnostics";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_robot-release/archive/release/galactic/turtlebot4_diagnostics/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "a5cc747d80b35067de72f071c92ea9cf8cbc8d10fa6078d1e119305c0c3a69d2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ diagnostic-aggregator diagnostic-msgs diagnostic-updater irobot-create-msgs rclpy sensor-msgs ];

  meta = {
    description = ''Turtlebot4 Diagnostics'';
    license = with lib.licenses; [ asl20 ];
  };
}
