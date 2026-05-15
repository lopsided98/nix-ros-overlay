
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto, mrpt-map-server, mrpt-msgs-bridge, mrpt-nav-interfaces, mrpt-pf-localization, mrpt-pointcloud-pipeline, mrpt-reactivenav2d, mrpt-tps-astar-planner, mrpt-tutorials }:
buildRosPackage {
  pname = "ros-rolling-mrpt-navigation";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_navigation-release/archive/release/rolling/mrpt_navigation/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "35f1f84ab88a9c6e1e5109d2181079348f32a0c86223952e6aa95a4e6dba0ded";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto mrpt-map-server mrpt-msgs-bridge mrpt-nav-interfaces mrpt-pf-localization mrpt-pointcloud-pipeline mrpt-reactivenav2d mrpt-tps-astar-planner mrpt-tutorials ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Tools related to the Mobile Robot Programming Toolkit (MRPT).
    Refer to https://wiki.ros.org/mrpt_navigation for further documentation.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
