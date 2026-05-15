
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, control-msgs, controller-interface, controller-manager, generate-parameter-library, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-cmake, ros2-control-test-assets, std-srvs }:
buildRosPackage {
  pname = "ros-lyrical-motion-primitives-controllers";
  version = "6.7.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/lyrical/motion_primitives_controllers/6.7.0-1.tar.gz";
    name = "6.7.0-1.tar.gz";
    sha256 = "9001e192a7b24463f5318468dc59e6fc50be18eb149b784add685b7fc28354e8";
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
