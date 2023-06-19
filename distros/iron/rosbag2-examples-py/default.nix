
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-pep257, example-interfaces, pythonPackages, rclpy, rosbag2-py, std-msgs }:
buildRosPackage {
  pname = "ros-iron-rosbag2-examples-py";
  version = "0.22.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbag2-release/archive/release/iron/rosbag2_examples_py/0.22.1-1.tar.gz";
    name = "0.22.1-1.tar.gz";
    sha256 = "12347f262d8ffaf31c6cb2cef873c637931dcce89e25f285210e4b0f956275a2";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ example-interfaces rclpy rosbag2-py std-msgs ];

  meta = {
    description = ''Python bag writing tutorial'';
    license = with lib.licenses; [ asl20 ];
  };
}
