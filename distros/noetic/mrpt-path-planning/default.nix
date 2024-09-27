
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-libgui, mrpt-libmaps, mrpt-libnav, mrpt-libtclap, mvsim }:
buildRosPackage {
  pname = "ros-noetic-mrpt-path-planning";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_path_planning-release/archive/release/noetic/mrpt_path_planning/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "17a68fafaa254d50ad7431ae47be629d423420fdd31ca2943a796817c9c112d1";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mrpt-libgui mrpt-libmaps mrpt-libnav mrpt-libtclap mvsim ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Path planning and navigation algorithms for robots/vehicles moving on planar environments. This library builds upon mrpt-nav and the theory behind PTGs to generate libraries of &quot;motion primitives&quot; for vehicles with arbitrary shape and realistic kinematics and dynamics.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
