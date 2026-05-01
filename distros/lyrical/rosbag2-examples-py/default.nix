
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, ament-xmllint, example-interfaces, python3Packages, rclpy, rosbag2-compression, rosbag2-py, rosidl-runtime-py, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rosbag2-examples-py";
  version = "0.33.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/lyrical/rosbag2_examples_py/0.33.2-1.tar.gz";
    name = "0.33.2-1.tar.gz";
    sha256 = "0a0c24c5ceb8443ddf64ed8c8044aba521f06fdc2f07f138b348e30a087dcc42";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 ament-xmllint python3Packages.pytest ];
  propagatedBuildInputs = [ example-interfaces rclpy rosbag2-compression rosbag2-py rosidl-runtime-py std-msgs ];

  meta = {
    description = "Python bag writing tutorial";
    license = with lib.licenses; [ asl20 ];
  };
}
