
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, canopen-402-driver, canopen-interfaces, canopen-proxy-driver, controller-interface, controller-manager, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, std-msgs, std-srvs }:
buildRosPackage {
  pname = "ros-humble-canopen-ros2-controllers";
  version = "0.2.13-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_canopen-release/archive/release/humble/canopen_ros2_controllers/0.2.13-1.tar.gz";
    name = "0.2.13-1.tar.gz";
    sha256 = "31f8fa83a140ef0e6722ca12d5a9d8132fbd7570a2b47446a3abb28d25460fe0";
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
