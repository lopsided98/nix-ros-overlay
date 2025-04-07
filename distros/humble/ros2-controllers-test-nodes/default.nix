
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, launch-ros, launch-testing-ros, python3Packages, rclpy, sensor-msgs, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-humble-ros2-controllers-test-nodes";
  version = "2.43.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/humble/ros2_controllers_test_nodes/2.43.0-1.tar.gz";
    name = "2.43.0-1.tar.gz";
    sha256 = "4f077a7fad776eddc8fdd9e0689abb00c034c25365ba8b98d97f7c1551d08ad0";
  };

  buildType = "ament_python";
  checkInputs = [ launch-ros launch-testing-ros python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy sensor-msgs std-msgs trajectory-msgs ];

  meta = {
    description = "Demo nodes for showing and testing functionalities of the ros2_control framework.";
    license = with lib.licenses; [ asl20 ];
  };
}
