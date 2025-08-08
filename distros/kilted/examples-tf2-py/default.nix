
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, geometry-msgs, launch-ros, python3Packages, rclpy, sensor-msgs, tf2-ros-py }:
buildRosPackage {
  pname = "ros-kilted-examples-tf2-py";
  version = "0.41.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/kilted/examples_tf2_py/0.41.2-1.tar.gz";
    name = "0.41.2-1.tar.gz";
    sha256 = "7a8c60c6fd112ed8614f76aa96b8db7e69db84f880651dfd424649501572ee15";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs launch-ros rclpy sensor-msgs tf2-ros-py ];

  meta = {
    description = "Has examples of using the tf2 Python API.";
    license = with lib.licenses; [ asl20 ];
  };
}
