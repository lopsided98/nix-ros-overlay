
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, color-util, geometry-msgs, pluginlib, polygon-msgs, polygon-utils, rviz-common, std-msgs }:
buildRosPackage {
  pname = "ros-humble-polygon-rviz-plugins";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/MetroRobots-release/polygon_ros-release/archive/release/humble/polygon_rviz_plugins/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "f66f9b02b0abddfd0f7d251b7c9af425530f781bc20dfc69621f07a785abf257";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ color-util geometry-msgs pluginlib polygon-msgs polygon-utils rviz-common std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RViz visualizations for polygons'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
