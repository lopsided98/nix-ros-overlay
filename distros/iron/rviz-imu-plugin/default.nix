
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, message-filters, pluginlib, qt5, rclcpp, rviz-common, rviz-ogre-vendor, rviz-rendering, sensor-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-iron-rviz-imu-plugin";
  version = "2.1.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_tools-release/archive/release/iron/rviz_imu_plugin/2.1.3-3.tar.gz";
    name = "2.1.3-3.tar.gz";
    sha256 = "bf5996963d7b9d6d6f96e9ffab577509377813ea4412df1e36ee759fce517096";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ message-filters pluginlib qt5.qtbase rclcpp rviz-common rviz-ogre-vendor rviz-rendering sensor-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RVIZ plugin for IMU visualization'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
