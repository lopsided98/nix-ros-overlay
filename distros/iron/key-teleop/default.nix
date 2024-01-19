
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-iron-key-teleop";
  version = "1.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/teleop_tools-release/archive/release/iron/key_teleop/1.5.0-1.tar.gz";
    name = "1.5.0-1.tar.gz";
    sha256 = "88be6e7fbabbf11c576d66aea0c77c52149788a84640eda144618e3fa2e074f6";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs rclpy ];

  meta = {
    description = ''A text-based interface to send a robot movement commands.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
