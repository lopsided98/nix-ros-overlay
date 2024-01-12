
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, launch-ros, pythonPackages, rclpy, sensor-msgs, tf2-ros-py }:
buildRosPackage {
  pname = "ros-iron-examples-tf2-py";
  version = "0.31.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/iron/examples_tf2_py/0.31.5-1.tar.gz";
    name = "0.31.5-1.tar.gz";
    sha256 = "5505737bca78dbb04c8a99ef2d67fce49576b4312c7a2ba245ae2e06b65792e8";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs launch-ros rclpy sensor-msgs tf2-ros-py ];

  meta = {
    description = ''Has examples of using the tf2 Python API.'';
    license = with lib.licenses; [ asl20 ];
  };
}
