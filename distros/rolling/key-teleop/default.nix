
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-rolling-key-teleop";
  version = "1.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_tools-release/archive/release/rolling/key_teleop/1.5.0-2.tar.gz";
    name = "1.5.0-2.tar.gz";
    sha256 = "97a45fc76188b90a4897fea75f0a50126c9804552a591483401c432c17e7c816";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs rclpy ];

  meta = {
    description = ''A text-based interface to send a robot movement commands.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
