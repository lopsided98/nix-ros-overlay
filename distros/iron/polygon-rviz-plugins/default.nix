
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, color-util, geometry-msgs, pluginlib, polygon-msgs, polygon-utils, rviz-common, std-msgs }:
buildRosPackage {
  pname = "ros-iron-polygon-rviz-plugins";
  version = "1.0.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/polygon_ros-release/archive/release/iron/polygon_rviz_plugins/1.0.2-2.tar.gz";
    name = "1.0.2-2.tar.gz";
    sha256 = "b5c01f222a8e511625c5079b17f342731f34ad20bf0304db1f180fea0deb0c47";
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
