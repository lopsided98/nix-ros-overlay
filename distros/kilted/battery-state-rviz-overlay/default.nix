
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fmt, rclcpp, rviz-2d-overlay-msgs, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-battery-state-rviz-overlay";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_battery_monitoring-release/archive/release/kilted/battery_state_rviz_overlay/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "db157e9239cf653f5bf16451eb68e17ebf13d6dbeb917bcddf345ea71c3eb259";
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
