
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, color-util, geometry-msgs, pluginlib, polygon-msgs, polygon-utils, rviz-common, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-polygon-rviz-plugins";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/polygon_ros-release/archive/release/jazzy/polygon_rviz_plugins/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "3d7f44bd58a58fb2091abc57a51d77bed34096ec0f1a95d38f24d546a03b3f84";
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
