
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dynamixel-interfaces, dynamixel-sdk, hardware-interface, pluginlib, rclcpp, realtime-tools, std-srvs }:
buildRosPackage {
  pname = "ros-kilted-dynamixel-hardware-interface";
  version = "1.4.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamixel_hardware_interface-release/archive/release/kilted/dynamixel_hardware_interface/1.4.8-1.tar.gz";
    name = "1.4.8-1.tar.gz";
    sha256 = "8e2a2c6e601fe36d6d59320c379868db03921c104503d152bfb524bcf8b27fe5";
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
