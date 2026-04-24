
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, control-msgs, controller-interface, controller-manager, generate-parameter-library, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-cmake, ros2-control-test-assets, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-motion-primitives-controllers";
  version = "4.40.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/jazzy/motion_primitives_controllers/4.40.0-1.tar.gz";
    name = "4.40.0-1.tar.gz";
    sha256 = "6d4d22f5dcfa0bb3a60edb2087c9abcecf5ea431a4acf104c3d71293f05235b2";
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
