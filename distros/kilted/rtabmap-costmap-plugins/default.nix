
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, nav2-costmap-2d, pluginlib, rclcpp, ros-environment, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-rtabmap-costmap-plugins";
  version = "0.23.13-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/kilted/rtabmap_costmap_plugins/0.23.13-1.tar.gz";
    name = "0.23.13-1.tar.gz";
    sha256 = "50ef4f9eaf845f99ea8ea8d80fab0e8491750b5b8373ac4c8d491fc425bccda6";
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
