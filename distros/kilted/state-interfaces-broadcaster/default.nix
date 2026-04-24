
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-gmock, backward-ros, control-msgs, controller-interface, controller-manager, generate-parameter-library, hardware-interface, pluginlib, rclcpp, rclcpp-lifecycle, realtime-tools, ros2-control-cmake, ros2-control-test-assets }:
buildRosPackage {
  pname = "ros-kilted-state-interfaces-broadcaster";
  version = "5.15.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_controllers-release/archive/release/kilted/state_interfaces_broadcaster/5.15.0-1.tar.gz";
    name = "5.15.0-1.tar.gz";
    sha256 = "dd11efd337041fd7bee22425807c0406bb149b797effc3205dcbaf63f110c47b";
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
