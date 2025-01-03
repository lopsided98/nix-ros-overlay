
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, launch-ros, launch-testing-ros, python3Packages, rclpy, sensor-msgs, std-msgs, trajectory-msgs }:
buildRosPackage {
  pname = "ros-rolling-ros2-controllers-test-nodes";
  version = "4.18.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/rolling/ros2_controllers_test_nodes/4.18.0-2.tar.gz";
    name = "4.18.0-2.tar.gz";
    sha256 = "87a1bda78e6b66ee06e01a694655c5ff3fad6b58ddc826741b4e966ecaeacd52";
  };

  buildType = "ament_python";
  checkInputs = [ launch-ros launch-testing-ros python3Packages.pytest ];
  propagatedBuildInputs = [ rclpy sensor-msgs std-msgs trajectory-msgs ];

  meta = {
    description = "Demo nodes for showing and testing functionalities of the ros2_control framework.";
    license = with lib.licenses; [ asl20 ];
  };
}
