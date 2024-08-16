
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, fmt, rclcpp, rviz-2d-overlay-msgs, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-battery-state-rviz-overlay";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_battery_monitoring-release/archive/release/jazzy/battery_state_rviz_overlay/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "e8823b85013cf4c686803e295214f925f8557774c34f47ee0966521e44e1a11b";
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
