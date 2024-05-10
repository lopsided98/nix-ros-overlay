
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, canopen-402-driver, canopen-interfaces, canopen-proxy-driver, controller-interface, controller-manager, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-rolling-canopen-ros2-controllers";
  version = "0.2.12-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/rolling/canopen_ros2_controllers/0.2.12-2.tar.gz";
    name = "0.2.12-2.tar.gz";
    sha256 = "5db8a39580b1eabdd2c9884a1d14fb6f8b580985c3111a24014b6142417fa15d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-gmock ];
  propagatedBuildInputs = [ canopen-402-driver canopen-interfaces canopen-proxy-driver controller-interface controller-manager hardware-interface pluginlib rclcpp rclcpp-lifecycle realtime-tools std-msgs std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ros2_control controllers for ros2_canopen functionalities";
    license = with lib.licenses; [ asl20 ];
  };
}
