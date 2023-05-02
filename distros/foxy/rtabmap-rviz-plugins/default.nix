
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, pcl-conversions, pluginlib, rclcpp, rtabmap-conversions, rtabmap-msgs, rviz-common, rviz-default-plugins, rviz-rendering, sensor-msgs, std-msgs, tf2 }:
buildRosPackage {
  pname = "ros-foxy-rtabmap-rviz-plugins";
  version = "0.21.1-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/foxy/rtabmap_rviz_plugins/0.21.1-1.tar.gz";
    name = "0.21.1-1.tar.gz";
    sha256 = "4b4ef48d7b0f65a2166287293fff8580c3fa5f1887e4c49f578189bc5818bf3a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ pcl-conversions pluginlib rclcpp rtabmap-conversions rtabmap-msgs rviz-common rviz-default-plugins rviz-rendering sensor-msgs std-msgs tf2 ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''RTAB-Map's rviz plugins.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
