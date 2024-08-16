
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, controller-interface, pluginlib, realtime-tools, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-battery-state-broadcaster";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_battery_monitoring-release/archive/release/jazzy/battery_state_broadcaster/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "2c50a586c6ec242aa23a3ddc85c61c3b9cd7d774d35989b0e6563ef576b3f63e";
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
