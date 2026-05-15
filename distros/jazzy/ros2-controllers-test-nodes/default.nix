
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, launch-ros, launch-testing-ros, python3Packages, rclpy, sensor-msgs, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ros2-controllers-test-nodes";
  version = "4.40.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/jazzy/ros2_controllers_test_nodes/4.40.1-1.tar.gz";
    name = "4.40.1-1.tar.gz";
    sha256 = "956048b28e554af65ec7eefd59f099b8dfb5acf51a8c1726ff66d6a86ec4b94e";
  };

  buildType = "ament_python";
  checkInputs = [ launch-ros launch-testing-ros python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy sensor-msgs std-msgs trajectory-msgs ];

  meta = {
    description = "Demo nodes for showing and testing functionalities of the ros2_control framework.";
    license = with lib.licenses; [ asl20 ];
  };
}
