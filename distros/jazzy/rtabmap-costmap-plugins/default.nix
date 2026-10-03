
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, nav2-costmap-2d, pluginlib, rclcpp, ros-environment, visualization-msgs }:
buildRosPackage {
  pname = "ros-jazzy-rtabmap-costmap-plugins";
  version = "0.23.13-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/jazzy/rtabmap_costmap_plugins/0.23.13-1.tar.gz";
    name = "0.23.13-1.tar.gz";
    sha256 = "a69611b481321ec35a1ec80446965b83c0cc6cf1d36b7a1a2ecd2422e24c58df";
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
