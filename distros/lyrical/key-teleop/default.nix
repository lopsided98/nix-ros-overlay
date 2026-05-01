
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-lyrical-key-teleop";
  version = "2.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_tools-release/archive/release/lyrical/key_teleop/2.0.0-3.tar.gz";
    name = "2.0.0-3.tar.gz";
    sha256 = "0b7a3f2746f3cd87d83fbbfcf37d38d39ce62e29db361d463673a941acd6080b";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs rclpy ];

  meta = {
    description = "A text-based interface to send a robot movement commands.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
