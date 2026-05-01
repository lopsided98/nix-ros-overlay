
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, color-util, geometry-msgs, pluginlib, polygon-msgs, polygon-utils, rviz-common, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-polygon-rviz-plugins";
  version = "1.3.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/polygon_ros-release/archive/release/lyrical/polygon_rviz_plugins/1.3.0-3.tar.gz";
    name = "1.3.0-3.tar.gz";
    sha256 = "ba7c72e6d7742d8e64671809120dbf55e15da5d4e761a8ca2d0f805880c13105";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros ];
  propagatedBuildInputs = [ color-util geometry-msgs pluginlib polygon-msgs polygon-utils rviz-common std-msgs ];
  nativeBuildInputs = [ ament-cmake-ros ];

  meta = {
    description = "RViz visualizations for polygons";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
