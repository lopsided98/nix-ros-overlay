
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, nav-2d-utils, nav-msgs, nav2-core, nav2-costmap-2d, nav2z-planners-common, pluginlib, tf2 }:
buildRosPackage {
  pname = "ros-jazzy-forward-global-planner";
  version = "3.1.0-r2";

  src = fetchurl {
    url = "https://github.com/robosoft-ai/SMACC2-release/archive/release/jazzy/forward_global_planner/3.1.0-2.tar.gz";
    name = "3.1.0-2.tar.gz";
    sha256 = "d8bf53ffaab5d3514d26d48f10d4c90e0430eabfda2ea7a9f78f155a8c7cc8ce";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake pluginlib ];
  propagatedBuildInputs = [ geometry-msgs nav-2d-utils nav-msgs nav2-core nav2-costmap-2d nav2z-planners-common tf2 ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "The forward_global_planner package.";
    license = with lib.licenses; [ "BSDv3" ];
  };
}
