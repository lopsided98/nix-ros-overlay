
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dynamixel-workbench-toolbox, hardware-interface, lifecycle-msgs, pluginlib, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-rolling-dynamixel-hardware";
  version = "0.3.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamixel_hardware-release/archive/release/rolling/dynamixel_hardware/0.3.1-4.tar.gz";
    name = "0.3.1-4.tar.gz";
    sha256 = "3b9674db4fb3db5bfcfe8d36859084ed3a9ccb8a16ec27587035ba791fd428d6";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ dynamixel-workbench-toolbox hardware-interface lifecycle-msgs pluginlib rclcpp rclcpp-lifecycle ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ros2_control hardware for ROBOTIS Dynamixel";
    license = with lib.licenses; [ asl20 ];
  };
}
