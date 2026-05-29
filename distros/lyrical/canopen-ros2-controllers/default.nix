
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, canopen-402-driver, canopen-interfaces, canopen-proxy-driver, controller-interface, controller-manager, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-lyrical-canopen-ros2-controllers";
  version = "0.3.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/lyrical/canopen_ros2_controllers/0.3.4-1.tar.gz";
    name = "0.3.4-1.tar.gz";
    sha256 = "132590ece02ddb161654ddfa034c5804abd5ebf3cce9026a6db656335fb4afef";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ canopen-402-driver canopen-interfaces canopen-proxy-driver controller-interface controller-manager hardware-interface pluginlib rclcpp rclcpp-lifecycle realtime-tools std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ros2_control controllers for ros2_canopen functionalities";
    license = with lib.licenses; [ asl20 ];
  };
}
