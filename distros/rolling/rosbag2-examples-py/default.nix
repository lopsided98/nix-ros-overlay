
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, pythonPackages, rclpy, rosbag2-py, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-rosbag2-examples-py";
  version = "0.25.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/rolling/rosbag2_examples_py/0.25.0-1.tar.gz";
    name = "0.25.0-1.tar.gz";
    sha256 = "4c8f6a4f604ce6150efcb4fbe26d9e5eeb2eed4b6c9a0c94af76cfd586c776cc";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ example-interfaces rclpy rosbag2-py std-msgs ];

  meta = {
    description = "Python bag writing tutorial";
    license = with lib.licenses; [ asl20 ];
  };
}
