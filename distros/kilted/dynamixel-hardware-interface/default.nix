
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dynamixel-interfaces, dynamixel-sdk, hardware-interface, pluginlib, rclcpp, realtime-tools, std-srvs }:
buildRosPackage {
  pname = "ros-kilted-dynamixel-hardware-interface";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamixel_hardware_interface-release/archive/release/kilted/dynamixel_hardware_interface/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "e09691a8aa44876f223f8e666f2a22594a8ef13887ba3988033c34f9d2318268";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ dynamixel-interfaces dynamixel-sdk hardware-interface pluginlib rclcpp realtime-tools std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS 2 package providing a hardware interface for controlling Dynamixel motors via the ROS 2 control framework.";
    license = with lib.licenses; [ asl20 ];
  };
}
