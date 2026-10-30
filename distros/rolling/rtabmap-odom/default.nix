
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, cv-bridge, image-geometry, laser-geometry, message-filters, nav-msgs, pcl-conversions, pcl-ros, pluginlib, rclcpp, rclcpp-components, ros-environment, rosbag2-cpp, rosbag2-storage-mcap, rtabmap-conversions, rtabmap-msgs, rtabmap-sync, rtabmap-util, sensor-msgs }:
buildRosPackage {
  pname = "ros-rolling-rtabmap-odom";
  version = "0.23.13-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rtabmap_ros-release/archive/release/rolling/rtabmap_odom/0.23.13-2.tar.gz";
    name = "0.23.13-2.tar.gz";
    sha256 = "b114d3260a3e3f69664c1d623ba624252fcc2db5258cc299df0058bc10ad71c8";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ros-environment ];
  checkInputs = [ ament-cmake-gtest rosbag2-cpp rosbag2-storage-mcap ];
  propagatedBuildInputs = [ cv-bridge image-geometry laser-geometry message-filters nav-msgs pcl-conversions pcl-ros pluginlib rclcpp rclcpp-components rtabmap-conversions rtabmap-msgs rtabmap-sync rtabmap-util sensor-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "RTAB-Map's odometry package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
