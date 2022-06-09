
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, pythonPackages, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-humble-examples-rclpy-minimal-publisher";
  version = "0.15.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/examples-release/archive/release/humble/examples_rclpy_minimal_publisher/0.15.0-2.tar.gz";
    name = "0.15.0-2.tar.gz";
    sha256 = "a110fd6163c6659482d4c45b2c45317540e821c7c9e3b98570168b31c61bf736";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs ];

  meta = {
    description = ''Examples of minimal publishers using rclpy.'';
    license = with lib.licenses; [ asl20 ];
  };
}
