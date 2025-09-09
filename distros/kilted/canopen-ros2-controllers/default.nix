
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, canopen-402-driver, canopen-interfaces, canopen-proxy-driver, controller-interface, controller-manager, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-kilted-canopen-ros2-controllers";
  version = "0.3.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/kilted/canopen_ros2_controllers/0.3.1-1.tar.gz";
    name = "0.3.1-1.tar.gz";
    sha256 = "3e231bacf20da72fa994d41e3217c5c4423cb2aed9f746d77bb0c3b36711b240";
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
