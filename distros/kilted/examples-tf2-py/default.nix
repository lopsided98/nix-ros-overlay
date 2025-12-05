
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, geometry-msgs, launch-ros, python3Packages, rclpy, sensor-msgs, tf2-ros-py }:
buildRosPackage {
  pname = "ros-kilted-examples-tf2-py";
  version = "0.41.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/kilted/examples_tf2_py/0.41.5-1.tar.gz";
    name = "0.41.5-1.tar.gz";
    sha256 = "39a31ef84822b4c9db20a18db5215c7798c720395ee807d039d9b91c3c358e43";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs launch-ros rclpy sensor-msgs tf2-ros-py ];

  meta = {
    description = "Has examples of using the tf2 Python API.";
    license = with lib.licenses; [ asl20 ];
  };
}
