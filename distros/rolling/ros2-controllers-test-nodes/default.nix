
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pythonPackages, rclpy, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-rolling-ros2-controllers-test-nodes";
  version = "4.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/rolling/ros2_controllers_test_nodes/4.2.0-1.tar.gz";
    name = "4.2.0-1.tar.gz";
    sha256 = "22f37a7ce361b178f6ffe7791b7e69b1181c9a1a19f37c1189a00506a098872e";
  };

  buildType = "ament_python";
  checkInputs = [ pythonPackages.pytest ];
  propagatedBuildInputs = [ rclpy std-msgs trajectory-msgs ];

  meta = {
    description = ''Demo nodes for showing and testing functionalities of the ros2_control framework.'';
    license = with lib.licenses; [ asl20 ];
  };
}
