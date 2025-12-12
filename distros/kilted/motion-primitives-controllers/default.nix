
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, control-msgs, controller-interface, controller-manager, generate-parameter-library, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-cmake, ros2-control-test-assets, std-srvs }:
buildRosPackage {
  pname = "ros-kilted-motion-primitives-controllers";
  version = "5.11.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/kilted/motion_primitives_controllers/5.11.0-1.tar.gz";
    name = "5.11.0-1.tar.gz";
    sha256 = "1c5922cf783663f986ad11ba40cbb30e64e8aa582f43488d9cda64295a5e4ff4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake generate-parameter-library ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface ros2-control-test-assets ];
  propagatedBuildInputs = [ control-msgs controller-interface hardware-interface pluginlib rclcpp rclcpp-lifecycle realtime-tools std-srvs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Package to control robots using motion primitives like PTP, LIN and CIRC";
    license = with lib.licenses; [ asl20 ];
  };
}
