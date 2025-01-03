
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, message-filters, pluginlib, qt5, rclcpp, rviz-common, rviz-ogre-vendor, rviz-rendering, sensor-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-rviz-imu-plugin";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_tools-release/archive/release/rolling/rviz_imu_plugin/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "4a4a9863283b2f25f7cc87492ae25c16cb0415fb736107c0d4738642a927bd57";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ message-filters pluginlib qt5.qtbase rclcpp rviz-common rviz-ogre-vendor rviz-rendering sensor-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RVIZ plugin for IMU visualization";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
