
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, color-util, geometry-msgs, pluginlib, polygon-msgs, polygon-utils, rviz-common, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-polygon-rviz-plugins";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/MetroRobots-release/polygon_ros-release/archive/release/foxy/polygon_rviz_plugins/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "53e02e7d619d07b21b05740963fbd32835057a84fdb0765837fbc34cf6a08f09";
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
