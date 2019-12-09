
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, geometry-msgs, ament-copyright, pythonPackages, ament-pep257, rclpy, ament-flake8 }:
buildRosPackage {
  pname = "ros-dashing-key-teleop";
  version = "1.0.1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/teleop_tools-release/archive/release/dashing/key_teleop/1.0.1-0.tar.gz";
    name = "1.0.1-0.tar.gz";
    sha256 = "801499b37a29a2ff26955ecfa912aa902db98a6ffb5df9166e1e6710ea0274d7";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ament-flake8 ament-copyright ament-pep257 ];
  propagatedBuildInputs = [ geometry-msgs rclpy ];

  meta = {
    description = ''A text-based interface to send a robot movement commands.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
