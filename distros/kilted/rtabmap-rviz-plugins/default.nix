
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, pcl-conversions, pluginlib, rclcpp, rtabmap-conversions, rtabmap-msgs, rviz-common, rviz-default-plugins, rviz-rendering, sensor-msgs, std-msgs, tf2 }:
buildRosPackage {
  pname = "ros-kilted-rtabmap-rviz-plugins";
  version = "0.22.0-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/kilted/rtabmap_rviz_plugins/0.22.0-1.tar.gz";
    name = "0.22.0-1.tar.gz";
    sha256 = "fa9d0406056d0443fd3f0e615eb9cfc943ab789f149357d2c97e2a4bbb023c66";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ pcl-conversions pluginlib rclcpp rtabmap-conversions rtabmap-msgs rviz-common rviz-default-plugins rviz-rendering sensor-msgs std-msgs tf2 ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "RTAB-Map's rviz plugins.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
