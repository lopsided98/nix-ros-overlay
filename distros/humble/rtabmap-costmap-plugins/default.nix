
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, nav2-costmap-2d, pluginlib, rclcpp, ros-environment, visualization-msgs }:
buildRosPackage {
  pname = "ros-humble-rtabmap-costmap-plugins";
  version = "0.23.7-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/humble/rtabmap_costmap_plugins/0.23.7-1.tar.gz";
    name = "0.23.7-1.tar.gz";
    sha256 = "6e856e21254cc56f18a2cd816610abd847d173705234357479e7793a3c0c93fe";
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
