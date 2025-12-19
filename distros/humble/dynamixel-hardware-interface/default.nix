
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dynamixel-interfaces, dynamixel-sdk, hardware-interface, pluginlib, rclcpp, realtime-tools, std-srvs }:
buildRosPackage {
  pname = "ros-humble-dynamixel-hardware-interface";
  version = "1.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamixel_hardware_interface-release/archive/release/humble/dynamixel_hardware_interface/1.5.0-2.tar.gz";
    name = "1.5.0-2.tar.gz";
    sha256 = "172abed67884d3d3b7ec8de2bdca932e4c16218640321c5a9db1366ae3063dd4";
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
