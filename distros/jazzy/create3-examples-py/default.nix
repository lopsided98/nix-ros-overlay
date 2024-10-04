
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, irobot-create-msgs, pythonPackages, rclpy }:
buildRosPackage {
  pname = "ros-jazzy-create3-examples-py";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/create3_examples-release/archive/release/jazzy/create3_examples_py/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "27ad0757ab30afe1480122d4c25e77eedc8a729bb807988844b26914504e3c8f";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs irobot-create-msgs rclpy ];

  meta = {
    description = "Python examples for interacting with the iRobot(R) Create(R) 3 Educational Robot";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
