
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-2d-utils, nav-msgs, nav2-core, nav2-costmap-2d, nav2z-planners-common, std-msgs, tf2 }:
buildRosPackage {
  pname = "ros-jazzy-backward-local-planner";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/backward_local_planner/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "b8bdeb2e3f58c965fe4e4518f5602b737a16a7f34839c05a065ddbfbd005dfe5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ geometry-msgs nav-2d-utils nav-msgs nav2-core nav2-costmap-2d nav2z-planners-common std-msgs tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The backward_local_planner package.";
    license = with lib.licenses; [ "BSDv3" ];
  };
}
