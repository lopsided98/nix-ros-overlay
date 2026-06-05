
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-2d-utils, nav-msgs, nav2-core, nav2-costmap-2d, nav2z-planners-common, std-msgs, tf2 }:
buildRosPackage {
  pname = "ros-jazzy-forward-local-planner";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/forward_local_planner/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "bec2ace3c7815e4f4630d02524e41c4e8c5939fd58ff18ad28f2f5428439ba31";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs nav-2d-utils nav-msgs nav2-core nav2-costmap-2d nav2z-planners-common std-msgs tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "forward_local_planner package.";
    license = with lib.licenses; [ "BSDv3" ];
  };
}
