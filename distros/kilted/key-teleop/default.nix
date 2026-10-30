
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-kilted-key-teleop";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_tools-release/archive/release/kilted/key_teleop/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "5e7195e5f82e85015623a161188693f7265a86ba864e3342e2ccbeeab3fabe98";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs rclpy ];

  meta = {
    description = "A text-based interface to send a robot movement commands.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
