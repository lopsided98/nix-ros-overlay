
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, angles, color-util, geometry-msgs, polygon-msgs, polygon-rviz-plugins, polygon-utils, rclcpp, rviz-common, rviz-default-plugins, rviz2 }:
buildRosPackage {
  pname = "ros-rolling-polygon-demos";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/MetroRobots-release/polygon_ros-release/archive/release/rolling/polygon_demos/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "4037c69e158eb3470777dc1db81ca468cdc2f3819cf6f010cc21e100d109db5a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ angles color-util geometry-msgs polygon-msgs polygon-rviz-plugins polygon-utils rclcpp rviz-common rviz-default-plugins rviz2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Demo of polygon_rviz_plugins'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
