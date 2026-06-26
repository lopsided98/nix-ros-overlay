
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, cv-bridge, image-geometry, laser-geometry, message-filters, nav-msgs, pcl-conversions, pcl-ros, pluginlib, rclcpp, rclcpp-components, ros-environment, rtabmap-conversions, rtabmap-msgs, rtabmap-sync, rtabmap-util, sensor-msgs }:
buildRosPackage {
  pname = "ros-kilted-rtabmap-odom";
  version = "0.23.7-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/kilted/rtabmap_odom/0.23.7-1.tar.gz";
    name = "0.23.7-1.tar.gz";
    sha256 = "d1129d7e257993063c5baaad1ed47f2c360936fb81423734dad36ecc38ef924c";
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
