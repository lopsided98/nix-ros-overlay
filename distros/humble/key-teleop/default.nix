
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-humble-key-teleop";
  version = "1.3.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_tools-release/archive/release/humble/key_teleop/1.3.0-2.tar.gz";
    name = "1.3.0-2.tar.gz";
    sha256 = "6a32b880d1918822c3f54f42de698feaa6c37486b791b2eabb5f8f64b9dbd723";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs rclpy ];

  meta = {
    description = ''A text-based interface to send a robot movement commands.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
