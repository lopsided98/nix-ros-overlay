
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, cv-bridge, geometry-msgs, nav-msgs, nav2-msgs, rclcpp, rclcpp-components, rtabmap-msgs, rtabmap-sync, rtabmap-util, sensor-msgs, std-msgs, std-srvs, tf2, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-rtabmap-slam";
  version = "0.21.1-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/humble/rtabmap_slam/0.21.1-1.tar.gz";
    name = "0.21.1-1.tar.gz";
    sha256 = "50e7fab3c747aba6f08f79944378018e38fa97924f29ec89862531a3337d188c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs nav-msgs nav2-msgs rclcpp rclcpp-components rtabmap-msgs rtabmap-sync rtabmap-util sensor-msgs std-msgs std-srvs tf2 tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = ''RTAB-Map's SLAM package.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
