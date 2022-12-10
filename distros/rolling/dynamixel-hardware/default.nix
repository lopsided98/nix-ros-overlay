
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dynamixel-workbench-toolbox, hardware-interface, lifecycle-msgs, pluginlib, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-rolling-dynamixel-hardware";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamixel_hardware-release/archive/release/rolling/dynamixel_hardware/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "3de9166f8edf8dfa5c09a66c877574b810a2603c140ac3e813c7db5b17881389";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ dynamixel-workbench-toolbox hardware-interface lifecycle-msgs pluginlib rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ros2_control hardware for ROBOTIS Dynamixel'';
    license = with lib.licenses; [ asl20 ];
  };
}
