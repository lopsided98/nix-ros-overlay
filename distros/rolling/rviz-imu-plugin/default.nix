
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, message-filters, pluginlib, qt6, rclcpp, rviz-common, rviz-ogre-vendor, rviz-rendering, sensor-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-rolling-rviz-imu-plugin";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_tools-release/archive/release/rolling/rviz_imu_plugin/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "a56b28bfaf8d68438ba01b80d162ae9ea7374f2a025bc9983cb34fa748249081";
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
