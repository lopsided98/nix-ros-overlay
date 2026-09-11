
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, message-filters, pluginlib, qt5or6, rclcpp, rviz-common, rviz-ogre-vendor, rviz-rendering, sensor-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-rviz-imu-plugin";
  version = "2.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_tools-release/archive/release/rolling/rviz_imu_plugin/2.2.5-1.tar.gz";
    name = "2.2.5-1.tar.gz";
    sha256 = "ec643bd02524ce4d84b9b5e961b08f02939e34e9193131118b8fdf1b7f461d5f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ message-filters pluginlib qt5or6.qtbase rclcpp rviz-common rviz-ogre-vendor rviz-rendering sensor-msgs tf2 tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RVIZ plugin for IMU visualization";
    license = with lib.licenses; [ bsd3 ];
  };
}
