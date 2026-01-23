
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, pluginlib, realtime-tools, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-battery-state-broadcaster";
  version = "1.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_battery_monitoring-release/archive/release/kilted/battery_state_broadcaster/1.2.0-1.tar.gz";
    name = "1.2.0-1.tar.gz";
    sha256 = "c2577f64cdc193079cf18067cb801f53ce630cec144534e3d7c3fa4198d62540";
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
