
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, message-filters, pluginlib, qt5, rclcpp, rviz-common, rviz-ogre-vendor, rviz-rendering, sensor-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-rviz-imu-plugin";
  version = "2.1.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_tools-release/archive/release/jazzy/rviz_imu_plugin/2.1.3-4.tar.gz";
    name = "2.1.3-4.tar.gz";
    sha256 = "f95ae0439b114760cbc1e30ba5756ec32de7895854f0ebfcd0a16c57c519410f";
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
