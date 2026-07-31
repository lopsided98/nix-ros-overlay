
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dynamixel-workbench-toolbox, hardware-interface, lifecycle-msgs, pluginlib, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-rolling-dynamixel-hardware";
  version = "0.6.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamixel_hardware-release/archive/release/rolling/dynamixel_hardware/0.6.1-1.tar.gz";
    name = "0.6.1-1.tar.gz";
    sha256 = "a31c27d21888a5bab05cf3dd11e36ad9f7f89557264074f4925b0436d0fab828";
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
