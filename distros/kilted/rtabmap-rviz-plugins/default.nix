
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_qtbase5-private-dev, ament-cmake-ros, pcl-conversions, pluginlib, rclcpp, ros-environment, rtabmap-conversions, rtabmap-msgs, rviz-common, rviz-default-plugins, rviz-rendering, sensor-msgs, std-msgs, tf2 }:
buildRosPackage {
  pname = "ros-kilted-rtabmap-rviz-plugins";
  version = "0.23.7-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/kilted/rtabmap_rviz_plugins/0.23.7-1.tar.gz";
    name = "0.23.7-1.tar.gz";
    sha256 = "b6556c4df9ba6eb119c27fb6aa710d422b1360dfc57819fffbc299b9882dce92";
  };

  buildType = "ament_cmake";
  buildInputs = [ _unresolved_qtbase5-private-dev ament-cmake-ros ros-environment ];
  propagatedBuildInputs = [ pcl-conversions pluginlib rclcpp rtabmap-conversions rtabmap-msgs rviz-common rviz-default-plugins rviz-rendering sensor-msgs std-msgs tf2 ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "RTAB-Map's rviz plugins.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
