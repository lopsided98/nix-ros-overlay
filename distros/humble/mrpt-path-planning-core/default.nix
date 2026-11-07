
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest, mrpt-containers, mrpt-graphs, mrpt-maps, mrpt-nav }:
buildRosPackage {
  pname = "ros-humble-mrpt-path-planning-core";
  version = "2.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_path_planning-release/archive/release/humble/mrpt_path_planning_core/2.1.0-1.tar.gz";
    name = "2.1.0-1.tar.gz";
    sha256 = "355a9d8f1578ef9b607f2dfb387e628d890a5d35fe544fc985efe242e0256b04";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ gtest ];
  propagatedBuildInputs = [ mrpt-containers mrpt-graphs mrpt-maps mrpt-nav ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Path planning and navigation algorithms for robots/vehicles moving on planar environments. This library builds upon mrpt-nav and the theory behind PTGs to generate libraries of \"motion primitives\" for vehicles with arbitrary shape and realistic kinematics and dynamics. Headless: no GUI/display dependency. See mrpt_path_planning_apps for the CLI/GUI applications.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
