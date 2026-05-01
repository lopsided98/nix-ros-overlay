
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dynamixel-workbench-toolbox, hardware-interface, lifecycle-msgs, pluginlib, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-lyrical-dynamixel-hardware";
  version = "0.6.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamixel_hardware-release/archive/release/lyrical/dynamixel_hardware/0.6.0-3.tar.gz";
    name = "0.6.0-3.tar.gz";
    sha256 = "4f1e8487f42dc580b37f8a242cdd7765d877163df6d1be2c15bd4d708eb50b01";
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
