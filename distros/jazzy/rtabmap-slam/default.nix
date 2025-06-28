
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, apriltag-msgs, cv-bridge, geometry-msgs, nav-msgs, nav2-msgs, rclcpp, rclcpp-components, rtabmap-msgs, rtabmap-sync, rtabmap-util, sensor-msgs, std-msgs, std-srvs, tf2, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rtabmap-slam";
  version = "0.22.0-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/jazzy/rtabmap_slam/0.22.0-1.tar.gz";
    name = "0.22.0-1.tar.gz";
    sha256 = "41ea23bd8052f78cb32f9e700549558146e1f4b9a21edde355b7e286eabdd01f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ apriltag-msgs cv-bridge geometry-msgs nav-msgs nav2-msgs rclcpp rclcpp-components rtabmap-msgs rtabmap-sync rtabmap-util sensor-msgs std-msgs std-srvs tf2 tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "RTAB-Map's SLAM package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
