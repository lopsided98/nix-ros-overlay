
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, color-util, geometry-msgs, pluginlib, polygon-msgs, polygon-utils, rviz-common, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-polygon-rviz-plugins";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/polygon_ros-release/archive/release/rolling/polygon_rviz_plugins/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "8cb0ddafee28e3771a054a7251862650826d1e12995aad6b97906a7b4b5441f5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ color-util geometry-msgs pluginlib polygon-msgs polygon-utils rviz-common std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RViz visualizations for polygons";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
