
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, message-filters, pluginlib, qt5, rclcpp, rviz-common, rviz-ogre-vendor, rviz-rendering, sensor-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-galactic-rviz-imu-plugin";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_tools-release/archive/release/galactic/rviz_imu_plugin/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "c18b74be79f4e84ceb530f16ca650a01e60a0cc34838f926afce956056b1f89f";
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
