
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, nav2-costmap-2d, pluginlib, rclcpp, ros-environment, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-rtabmap-costmap-plugins";
  version = "0.23.13-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/humble/rtabmap_costmap_plugins/0.23.13-1.tar.gz";
    name = "0.23.13-1.tar.gz";
    sha256 = "b8465d59909099e722e30d78d11d4a207f14652b7192e1e22476c9c7df40c200";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ros-environment ];
  propagatedBuildInputs = [ nav2-costmap-2d pluginlib rclcpp visualization-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "RTAB-Map's costmap plugins.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
