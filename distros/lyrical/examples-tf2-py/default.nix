
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, geometry-msgs, launch-ros, python3Packages, rclpy, sensor-msgs, tf2-ros-py }:
buildRosPackage {
  pname = "ros-lyrical-examples-tf2-py";
  version = "0.45.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/geometry2-release/archive/release/lyrical/examples_tf2_py/0.45.8-1.tar.gz";
    name = "0.45.8-1.tar.gz";
    sha256 = "1b7163d15abfbff03a4bd590a00756ce16a139031516fc339c55c7f8a3c3b712";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ geometry-msgs launch-ros rclpy sensor-msgs tf2-ros-py ];

  meta = {
    description = "Has examples of using the tf2 Python API.";
    license = with lib.licenses; [ asl20 ];
  };
}
