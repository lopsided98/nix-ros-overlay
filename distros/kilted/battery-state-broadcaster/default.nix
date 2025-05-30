
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, pluginlib, realtime-tools, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-battery-state-broadcaster";
  version = "1.0.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_battery_monitoring-release/archive/release/kilted/battery_state_broadcaster/1.0.1-2.tar.gz";
    name = "1.0.1-2.tar.gz";
    sha256 = "6d2ea3a5dd7c1a4b8f0a979b19fe7637474f59ff2ddfd4ba2dde2874be8deda5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ controller-interface pluginlib realtime-tools sensor-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ROS2 Control boradcaster for battery state sensors.";
    license = with lib.licenses; [ mit ];
  };
}
