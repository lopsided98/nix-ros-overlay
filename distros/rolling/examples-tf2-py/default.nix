
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, geometry-msgs, launch-ros, pythonPackages, rclpy, sensor-msgs, tf2-ros-py }:
buildRosPackage {
  pname = "ros-rolling-examples-tf2-py";
  version = "0.32.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/rolling/examples_tf2_py/0.32.2-1.tar.gz";
    name = "0.32.2-1.tar.gz";
    sha256 = "de3bb1c07cbd2ec1f8f980fac3edf474bd3b3cbf920410cf77d3ca0bbff1b3bb";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ geometry-msgs launch-ros rclpy sensor-msgs tf2-ros-py ];

  meta = {
    description = ''Has examples of using the tf2 Python API.'';
    license = with lib.licenses; [ asl20 ];
  };
}
