
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, nav2-costmap-2d, pluginlib, rclcpp, ros-environment, visualization-msgs }:
buildRosPackage {
  pname = "ros-kilted-rtabmap-costmap-plugins";
  version = "0.23.7-r1";

  src = fetchurl {
    url = "https://github.com/introlab/rtabmap_ros-release/archive/release/kilted/rtabmap_costmap_plugins/0.23.7-1.tar.gz";
    name = "0.23.7-1.tar.gz";
    sha256 = "54d7bac62264fa5647af0fed07ef7d03499340037b47320bdd0181a689e34a2f";
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
