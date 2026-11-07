
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, control-msgs, controller-interface, controller-manager, generate-parameter-library, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-cmake, ros2-control-test-assets, std-srvs }:
buildRosPackage {
  pname = "ros-jazzy-motion-primitives-controllers";
  version = "4.43.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/jazzy/motion_primitives_controllers/4.43.1-1.tar.gz";
    name = "4.43.1-1.tar.gz";
    sha256 = "0e8a62d501a4397c75bdd1b0763b4bb352218793c28bf17db12736f02e230338";
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
