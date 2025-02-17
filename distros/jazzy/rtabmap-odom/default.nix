
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, cv-bridge, image-geometry, laser-geometry, message-filters, nav-msgs, pcl-conversions, pcl-ros, pluginlib, rclcpp, rclcpp-components, rtabmap-conversions, rtabmap-msgs, rtabmap-sync, rtabmap-util, sensor-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rtabmap-odom";
  version = "0.21.10-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/jazzy/rtabmap_odom/0.21.10-1.tar.gz";
    name = "0.21.10-1.tar.gz";
    sha256 = "70301675971cd02a733ad519cf2b853ba96bb9b3a8ade59113758794ea7fb735";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ cv-bridge image-geometry laser-geometry message-filters nav-msgs pcl-conversions pcl-ros pluginlib rclcpp rclcpp-components rtabmap-conversions rtabmap-msgs rtabmap-sync rtabmap-util sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "RTAB-Map's odometry package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
