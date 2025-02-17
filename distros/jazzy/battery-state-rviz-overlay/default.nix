
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fmt, rclcpp, rviz-2d-overlay-msgs, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-battery-state-rviz-overlay";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_battery_monitoring-release/archive/release/jazzy/battery_state_rviz_overlay/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "d70502f85cf5ce187c8917a88e2e845e66014c7fb093a3f0ab4eb628c9c99fba";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ fmt rclcpp rviz-2d-overlay-msgs sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Converts BatteryState messages to RViz OverlayText messages.";
    license = with lib.licenses; [ mit ];
  };
}
