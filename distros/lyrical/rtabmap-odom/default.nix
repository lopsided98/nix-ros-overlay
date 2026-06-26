
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, cv-bridge, image-geometry, laser-geometry, message-filters, nav-msgs, pcl-conversions, pcl-ros, pluginlib, rclcpp, rclcpp-components, ros-environment, rtabmap-conversions, rtabmap-msgs, rtabmap-sync, rtabmap-util, sensor-msgs }:
buildRosPackage {
  pname = "ros-lyrical-rtabmap-odom";
  version = "0.23.7-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/lyrical/rtabmap_odom/0.23.7-1.tar.gz";
    name = "0.23.7-1.tar.gz";
    sha256 = "2c1e8de795a6e3ddfc898578d4a0afc440bdfb7ee1212a7c165f7ec052eb26f4";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ros-environment ];
  propagatedBuildInputs = [ cv-bridge image-geometry laser-geometry message-filters nav-msgs pcl-conversions pcl-ros pluginlib rclcpp rclcpp-components rtabmap-conversions rtabmap-msgs rtabmap-sync rtabmap-util sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "RTAB-Map's odometry package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
