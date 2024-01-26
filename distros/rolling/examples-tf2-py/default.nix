
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, launch-ros, pythonPackages, rclpy, sensor-msgs, tf2-ros-py }:
buildRosPackage {
  pname = "ros-rolling-examples-tf2-py";
  version = "0.35.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/examples_tf2_py/0.35.1-1.tar.gz";
    name = "0.35.1-1.tar.gz";
    sha256 = "fbc9808210fe9d4a080e69d27cbb4193da0a44106c0d9d8302f357cde02292e4";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs launch-ros rclpy sensor-msgs tf2-ros-py ];

  meta = {
    description = ''Has examples of using the tf2 Python API.'';
    license = with lib.licenses; [ asl20 ];
  };
}
