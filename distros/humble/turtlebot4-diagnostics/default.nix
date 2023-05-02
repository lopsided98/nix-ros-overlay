
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, diagnostic-aggregator, diagnostic-msgs, diagnostic-updater, irobot-create-msgs, pythonPackages, rclpy, sensor-msgs }:
buildRosPackage {
  pname = "ros-humble-turtlebot4-diagnostics";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/turtlebot4_robot-release/archive/release/humble/turtlebot4_diagnostics/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "3075aef4be6ca87548089e51f31b2f33dc58f4714be10d42da63e9dedc18a367";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ diagnostic-aggregator diagnostic-msgs diagnostic-updater irobot-create-msgs rclpy sensor-msgs ];

  meta = {
    description = ''Turtlebot4 Diagnostics'';
    license = with lib.licenses; [ asl20 ];
  };
}
