
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dynamixel-workbench-toolbox, hardware-interface, lifecycle-msgs, pluginlib, rclcpp, rclcpp-lifecycle }:
buildRosPackage {
  pname = "ros-jazzy-dynamixel-hardware";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamixel_hardware-release/archive/release/jazzy/dynamixel_hardware/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "a2b60d15d65b984c9f853d1cd8dc8c867752bde3320ffde7f27e6d39dc3ae852";
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
