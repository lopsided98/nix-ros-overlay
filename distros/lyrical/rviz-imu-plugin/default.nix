
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, message-filters, pluginlib, qt6, rclcpp, rviz-common, rviz-ogre-vendor, rviz-rendering, sensor-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-lyrical-rviz-imu-plugin";
  version = "2.2.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_tools-release/archive/release/lyrical/rviz_imu_plugin/2.2.2-3.tar.gz";
    name = "2.2.2-3.tar.gz";
    sha256 = "437f47947b7a9b9a33c4c8bc8365425b5e2671064f15ffbe88aefd436920bd6d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ message-filters pluginlib qt6.qtbase rclcpp rviz-common rviz-ogre-vendor rviz-rendering sensor-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RVIZ plugin for IMU visualization";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
