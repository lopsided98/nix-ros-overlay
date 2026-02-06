
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, launch-ros, launch-testing-ros, python3Packages, rclpy, sensor-msgs, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-rolling-ros2-controllers-test-nodes";
  version = "6.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/rolling/ros2_controllers_test_nodes/6.3.0-1.tar.gz";
    name = "6.3.0-1.tar.gz";
    sha256 = "4c02b9ac8de4d4e26d7d6922fa3bb80a5d3bc8dc92313736f3038d041073c595";
  };

  buildType = "ament_python";
  checkInputs = [ launch-ros launch-testing-ros python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy sensor-msgs std-msgs trajectory-msgs ];

  meta = {
    description = "Demo nodes for showing and testing functionalities of the ros2_control framework.";
    license = with lib.licenses; [ asl20 ];
  };
}
