
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pythonPackages, rclpy, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-iron-ros2-controllers-test-nodes";
  version = "3.19.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/iron/ros2_controllers_test_nodes/3.19.1-1.tar.gz";
    name = "3.19.1-1.tar.gz";
    sha256 = "5a906099f74bb2743e54afae9a4149ce89f66860ad3885244943d7b10ba243e9";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs trajectory-msgs ];

  meta = {
    description = ''Demo nodes for showing and testing functionalities of the ros2_control framework.'';
    license = with lib.licenses; [ asl20 ];
  };
}
