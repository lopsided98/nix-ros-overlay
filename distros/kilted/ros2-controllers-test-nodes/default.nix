
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, launch-ros, launch-testing-ros, python3Packages, rclpy, sensor-msgs, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-kilted-ros2-controllers-test-nodes";
  version = "5.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/kilted/ros2_controllers_test_nodes/5.7.0-1.tar.gz";
    name = "5.7.0-1.tar.gz";
    sha256 = "d88c060369f79a9057bd9b38b2ce9fcbfaef94c5f59fa16826845aac288a0921";
  };

  buildType = "ament_python";
  checkInputs = [ launch-ros launch-testing-ros python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy sensor-msgs std-msgs trajectory-msgs ];

  meta = {
    description = "Demo nodes for showing and testing functionalities of the ros2_control framework.";
    license = with lib.licenses; [ asl20 ];
  };
}
