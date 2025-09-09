
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, apriltag-msgs, aruco-msgs, aruco-opencv-msgs, cv-bridge, geometry-msgs, nav-msgs, rclcpp, rclcpp-components, ros-environment, rtabmap-msgs, rtabmap-sync, rtabmap-util, sensor-msgs, std-msgs, std-srvs, tf2, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-rolling-rtabmap-slam";
  version = "0.22.1-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/rolling/rtabmap_slam/0.22.1-1.tar.gz";
    name = "0.22.1-1.tar.gz";
    sha256 = "ebd822df73ea245392db0aeddf55faa30eadd63aff7bc506c3facc7146f4b982";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ros-environment ];
  propagatedBuildInputs = [ apriltag-msgs aruco-msgs aruco-opencv-msgs cv-bridge geometry-msgs nav-msgs rclcpp rclcpp-components rtabmap-msgs rtabmap-sync rtabmap-util sensor-msgs std-msgs std-srvs tf2 tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "RTAB-Map's SLAM package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
