
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-copyright, ament-flake8, ament-index-python, ament-pep257, example-interfaces, pythonPackages, rcl-interfaces, rclpy, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-demo-nodes-py";
  version = "0.34.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/demos-release/archive/release/rolling/demo_nodes_py/0.34.2-1.tar.gz";
    name = "0.34.2-1.tar.gz";
    sha256 = "8e3b00b5d51b2b077a81e40b681692a94fe002c60a911badcafb94b555968028";
  };

  buildType = "ament_python";
  checkInputs = [ ament-copyright ament-flake8 ament-pep257 pythonPackages.pytest ];
  propagatedBuildInputs = [ ament-index-python example-interfaces rcl-interfaces rclpy std-msgs ];

  meta = {
    description = "Python nodes which were previously in the ros2/examples repository but are now just used for demo purposes.";
    license = with lib.licenses; [ asl20 ];
  };
}
