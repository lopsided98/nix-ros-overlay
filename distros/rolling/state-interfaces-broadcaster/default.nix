
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, control-msgs, controller-interface, controller-manager, generate-parameter-library, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-cmake, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-rolling-state-interfaces-broadcaster";
  version = "6.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/rolling/state_interfaces_broadcaster/6.6.0-1.tar.gz";
    name = "6.6.0-1.tar.gz";
    sha256 = "e072e27cd3548c13e35aea8c24db76aec5f928c4330a7dc406661f51759b051d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ros2-control-cmake ];
  checkInputs = [ ament-cmake-gmock controller-manager hardware-interface ros2-control-test-assets ];
  propagatedBuildInputs = [ backward-ros control-msgs controller-interface generate-parameter-library pluginlib rclcpp rclcpp-lifecycle realtime-tools ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Broadcaster to publish the requested hardware interface states";
    license = with lib.licenses; [ asl20 ];
  };
}
