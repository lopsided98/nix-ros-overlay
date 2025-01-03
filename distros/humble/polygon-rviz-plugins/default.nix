
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, color-util, geometry-msgs, pluginlib, polygon-msgs, polygon-utils, rviz-common, std-msgs }:
buildRosPackage {
  pname = "ros-humble-polygon-rviz-plugins";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/polygon_ros-release/archive/release/humble/polygon_rviz_plugins/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "3e4405797fd4a2c09f1e1d3145d53a27bd41c18fc5a6e408e09b92f59ce11e90";
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
