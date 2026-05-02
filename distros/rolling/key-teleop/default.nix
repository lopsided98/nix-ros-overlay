
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-key-teleop";
  version = "2.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_tools-release/archive/release/rolling/key_teleop/2.0.0-2.tar.gz";
    name = "2.0.0-2.tar.gz";
    sha256 = "adae97533cc403d5a724f5dd15e929a7ea3f3d38802ae2a1acd00f7a86905ade";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs rclpy ];

  meta = {
    description = "A text-based interface to send a robot movement commands.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
