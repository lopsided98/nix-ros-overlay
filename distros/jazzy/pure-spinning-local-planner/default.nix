
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-2d-utils, nav-msgs, nav2-core, nav2-costmap-2d, nav2z-planners-common, pluginlib, tf2, tf2-geometry-msgs, tf2-ros }:
buildRosPackage {
  pname = "ros-jazzy-pure-spinning-local-planner";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/pure_spinning_local_planner/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "95b654fb88ba968c01dea8f642c2f5feacd166588cb5b3c3600628694a3b0b09";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pluginlib ];
  propagatedBuildInputs = [ geometry-msgs nav-2d-utils nav-msgs nav2-core nav2-costmap-2d nav2z-planners-common tf2 tf2-geometry-msgs tf2-ros ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The pure_spinning_local_planner package";
    license = with lib.licenses; [ asl20 ];
  };
}
