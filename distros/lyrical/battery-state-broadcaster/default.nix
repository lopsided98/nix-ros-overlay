
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, pluginlib, realtime-tools, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-battery-state-broadcaster";
  version = "1.2.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_battery_monitoring-release/archive/release/lyrical/battery_state_broadcaster/1.2.0-3.tar.gz";
    name = "1.2.0-3.tar.gz";
    sha256 = "21518cae7b930d0d69a6e898478b683c4caee73a03eb4006a2b3204f7ebc2f88";
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
