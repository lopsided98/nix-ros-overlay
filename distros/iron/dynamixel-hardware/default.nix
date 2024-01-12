
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dynamixel-workbench-toolbox, hardware-interface, lifecycle-msgs, pluginlib, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-iron-dynamixel-hardware";
  version = "0.3.1-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamixel_hardware-release/archive/release/iron/dynamixel_hardware/0.3.1-4.tar.gz";
    name = "0.3.1-4.tar.gz";
    sha256 = "b7ae3661b0ba3dc574a9dc91d2cbfc08c3a0d5f88299ab2743f271d2d0c6c93c";
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
