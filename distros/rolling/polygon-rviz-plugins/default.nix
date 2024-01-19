
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, color-util, geometry-msgs, pluginlib, polygon-msgs, polygon-utils, rviz-common, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-polygon-rviz-plugins";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/MetroRobots-release/polygon_ros-release/archive/release/rolling/polygon_rviz_plugins/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "0d6496261933d48d56586ba0311450b8038ec16453c55f2ed0f92a95dcb8e3e6";
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
