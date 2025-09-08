
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-libgui, mrpt-libmaps, mrpt-libnav, mrpt-libtclap, mvsim }:
buildRosPackage {
  pname = "ros-kilted-mrpt-path-planning";
  version = "0.2.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_path_planning-release/archive/release/kilted/mrpt_path_planning/0.2.1-2.tar.gz";
    name = "0.2.1-2.tar.gz";
    sha256 = "cdb67a9d958e449f2a70a00b20e6b2b109689f6721962879a6221117ab776058";
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
