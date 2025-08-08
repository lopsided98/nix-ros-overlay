
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, pcl-conversions, pluginlib, rclcpp, ros-environment, rtabmap-conversions, rtabmap-msgs, rviz-common, rviz-default-plugins, rviz-rendering, sensor-msgs, std-msgs, tf2 }:
buildRosPackage {
  pname = "ros-kilted-rtabmap-rviz-plugins";
  version = "0.22.1-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/kilted/rtabmap_rviz_plugins/0.22.1-1.tar.gz";
    name = "0.22.1-1.tar.gz";
    sha256 = "819dfdc973f240859155d6caf4c1ab58c5a01ca247cacfa3e68e3c43115e2a33";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ros-environment ];
  propagatedBuildInputs = [ pcl-conversions pluginlib rclcpp rtabmap-conversions rtabmap-msgs rviz-common rviz-default-plugins rviz-rendering sensor-msgs std-msgs tf2 ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "RTAB-Map's rviz plugins.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
