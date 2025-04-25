
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, python3Packages, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-key-teleop";
  version = "1.8.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_tools-release/archive/release/jazzy/key_teleop/1.8.0-1.tar.gz";
    name = "1.8.0-1.tar.gz";
    sha256 = "505d2366f5145ab799fee4e75fc5c1eacecc129d2e28c67f87c992e62d733245";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs rclpy ];

  meta = {
    description = "A text-based interface to send a robot movement commands.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
