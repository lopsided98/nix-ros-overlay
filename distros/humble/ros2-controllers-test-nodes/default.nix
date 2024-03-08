
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pythonPackages, rclpy, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-humble-ros2-controllers-test-nodes";
  version = "2.33.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/humble/ros2_controllers_test_nodes/2.33.0-1.tar.gz";
    name = "2.33.0-1.tar.gz";
    sha256 = "5cd4a1d8ee21690b843b901de16ba32feec941696d554a3005759f6fcb6de888";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs trajectory-msgs ];

  meta = {
    description = ''Demo nodes for showing and testing functionalities of the ros2_control framework.'';
    license = with lib.licenses; [ asl20 ];
  };
}
