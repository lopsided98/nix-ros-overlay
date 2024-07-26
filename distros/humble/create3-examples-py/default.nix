
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, irobot-create-msgs, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-humble-create3-examples-py";
  version = "0.0.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_examples-release/archive/release/humble/create3_examples_py/0.0.5-1.tar.gz";
    name = "0.0.5-1.tar.gz";
    sha256 = "70baad8b99b341711e842576c4dbee74da2107d1e6f693d144602e742b8a6b13";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs irobot-create-msgs rclpy ];

  meta = {
    description = "Python examples for interacting with the iRobot(R) Create(R) 3 Educational Robot";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
