
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dynamixel-interfaces, dynamixel-sdk, hardware-interface, pluginlib, rclcpp, realtime-tools, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-dynamixel-hardware-interface";
  version = "1.4.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/dynamixel_hardware_interface-release/archive/release/jazzy/dynamixel_hardware_interface/1.4.8-1.tar.gz";
    name = "1.4.8-1.tar.gz";
    sha256 = "115f37ea9f3befbf77185ae8e27830d229107a1256992b4bc368e0253b3068a5";
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
