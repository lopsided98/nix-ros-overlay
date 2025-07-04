
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, message-filters, pluginlib, qt5, rclcpp, rviz-common, rviz-ogre-vendor, rviz-rendering, sensor-msgs, tf2, tf2-ros }:
buildRosPackage {
  pname = "ros-kilted-rviz-imu-plugin";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/imu_tools-release/archive/release/kilted/rviz_imu_plugin/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "a58c5b857916cad502fc7cd0879e6f278fdb88f8520dec22fe8e54122503131c";
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
