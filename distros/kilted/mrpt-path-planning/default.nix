
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-libgui, mrpt-libmaps, mrpt-libnav, mrpt-libtclap, mvsim }:
buildRosPackage {
  pname = "ros-kilted-mrpt-path-planning";
  version = "1.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_path_planning-release/archive/release/kilted/mrpt_path_planning/1.0.1-1.tar.gz";
    name = "1.0.1-1.tar.gz";
    sha256 = "aab36fddbb0f1a64858a501bcfda81c4e461828f06e81e58db2baad812e7aa98";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mrpt-libgui mrpt-libmaps mrpt-libnav mrpt-libtclap mvsim ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Path planning and navigation algorithms for robots/vehicles moving on planar environments. This library builds upon mrpt-nav and the theory behind PTGs to generate libraries of \"motion primitives\" for vehicles with arbitrary shape and realistic kinematics and dynamics.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
