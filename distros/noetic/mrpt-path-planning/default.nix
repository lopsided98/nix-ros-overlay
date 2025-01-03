
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-libgui, mrpt-libmaps, mrpt-libnav, mrpt-libtclap, mvsim }:
buildRosPackage {
  pname = "ros-noetic-mrpt-path-planning";
  version = "0.2.1-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_path_planning-release/archive/release/noetic/mrpt_path_planning/0.2.1-1.tar.gz";
    name = "0.2.1-1.tar.gz";
    sha256 = "85d995b65395b72ef3e696fba4f114ee2a539380f035fad416d185961ed73ae2";
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
