
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, apriltag-msgs, aruco-msgs, aruco-opencv-msgs, cv-bridge, geometry-msgs, nav-msgs, nav2-msgs, rclcpp, rclcpp-components, ros-environment, rtabmap-msgs, rtabmap-sync, rtabmap-util, sensor-msgs, std-msgs, std-srvs, tf2, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rtabmap-slam";
  version = "0.22.1-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/jazzy/rtabmap_slam/0.22.1-1.tar.gz";
    name = "0.22.1-1.tar.gz";
    sha256 = "47222202950c61c6cb1f255ff5e2fbdeef6d0360f2b5a2b8d7b75de558074558";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ros-environment ];
  propagatedBuildInputs = [ apriltag-msgs aruco-msgs aruco-opencv-msgs cv-bridge geometry-msgs nav-msgs nav2-msgs rclcpp rclcpp-components rtabmap-msgs rtabmap-sync rtabmap-util sensor-msgs std-msgs std-srvs tf2 tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "RTAB-Map's SLAM package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
