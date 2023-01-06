
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pythonPackages, rclpy, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-humble-ros2-controllers-test-nodes";
  version = "2.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/humble/ros2_controllers_test_nodes/2.15.0-1.tar.gz";
    name = "2.15.0-1.tar.gz";
    sha256 = "5e7aee9f4fb75533ed72b77b7c49559fc4b1d04bb9be8f04d78168784125e878";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs trajectory-msgs ];

  meta = {
    description = ''Demo nodes for showing and testing functionalities of the ros2_control framework.'';
    license = with lib.licenses; [ asl20 ];
  };
}
