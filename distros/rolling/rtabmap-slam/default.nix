
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-gtest, ament-cmake-ros, apriltag-msgs, aruco-msgs, aruco-opencv-msgs, cv-bridge, geometry-msgs, nav-msgs, rclcpp, rclcpp-components, ros-environment, rtabmap-conversions, rtabmap-msgs, rtabmap-sync, rtabmap-util, sensor-msgs, std-msgs, std-srvs, tf2, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-rtabmap-slam";
  version = "0.23.13-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rtabmap_ros-release/archive/release/rolling/rtabmap_slam/0.23.13-2.tar.gz";
    name = "0.23.13-2.tar.gz";
    sha256 = "8fdd23ec90c0e4e20fa73d1caf445506e160d9a15dbd398ef0ade438881d433e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ros-environment ];
  checkInputs = [ ament-cmake-gtest rtabmap-conversions ];
  propagatedBuildInputs = [ apriltag-msgs aruco-msgs aruco-opencv-msgs cv-bridge geometry-msgs nav-msgs rclcpp rclcpp-components rtabmap-msgs rtabmap-sync rtabmap-util sensor-msgs std-msgs std-srvs tf2 tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "RTAB-Map's SLAM package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
