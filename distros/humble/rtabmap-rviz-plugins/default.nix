
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, _unresolved_qtbase5-private-dev, ament-cmake-ros, pcl-conversions, pluginlib, rclcpp, ros-environment, rtabmap-conversions, rtabmap-msgs, rviz-common, rviz-default-plugins, rviz-rendering, sensor-msgs, std-msgs, tf2 }:
buildRosPackage {
  pname = "ros-humble-rtabmap-rviz-plugins";
  version = "0.23.7-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/humble/rtabmap_rviz_plugins/0.23.7-1.tar.gz";
    name = "0.23.7-1.tar.gz";
    sha256 = "ebf34a0048e090f0861fa6c7f90eeec29a73a730ad3701212a89595169e48671";
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
