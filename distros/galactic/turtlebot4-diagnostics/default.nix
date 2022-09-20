
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, diagnostic-aggregator, diagnostic-msgs, diagnostic-updater, irobot-create-msgs, pythonPackages, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-galactic-turtlebot4-diagnostics";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_robot-release/archive/release/galactic/turtlebot4_diagnostics/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "a7769fc4c156a9debccea3ba2df94e9fe562f53cb3794e4be0e239aa004a1337";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ diagnostic-aggregator diagnostic-msgs diagnostic-updater irobot-create-msgs rclpy sensor-msgs ];

  meta = {
    description = ''Turtlebot4 Diagnostics'';
    license = with lib.licenses; [ asl20 ];
  };
}
