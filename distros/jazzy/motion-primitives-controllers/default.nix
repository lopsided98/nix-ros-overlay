
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, control-msgs, controller-interface, controller-manager, generate-parameter-library, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-cmake, ros2-control-test-assets, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-motion-primitives-controllers";
  version = "4.42.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/jazzy/motion_primitives_controllers/4.42.1-1.tar.gz";
    name = "4.42.1-1.tar.gz";
    sha256 = "4c93611b01a00efb5aebb96bad453c21507b7ea2a0990c10eb788b7e465d3cf2";
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
