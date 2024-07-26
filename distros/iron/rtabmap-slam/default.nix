
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, cv-bridge, geometry-msgs, nav-msgs, nav2-msgs, rclcpp, rclcpp-components, rtabmap-msgs, rtabmap-sync, rtabmap-util, sensor-msgs, std-msgs, std-srvs, tf2, tf2-ros, visualization-msgs }:
buildRosPackage {
  pname = "ros-iron-rtabmap-slam";
  version = "0.21.5-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/iron/rtabmap_slam/0.21.5-1.tar.gz";
    name = "0.21.5-1.tar.gz";
    sha256 = "6cb584e2b377d1f1dd26466809c2155c2afe16790c52fcbe28b545cc1bef2c59";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ cv-bridge geometry-msgs nav-msgs nav2-msgs rclcpp rclcpp-components rtabmap-msgs rtabmap-sync rtabmap-util sensor-msgs std-msgs std-srvs tf2 tf2-ros visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "RTAB-Map's SLAM package.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
