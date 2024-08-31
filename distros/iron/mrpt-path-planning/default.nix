
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-libgui, mrpt-libmaps, mrpt-libnav, mrpt-libtclap, mvsim }:
buildRosPackage {
  pname = "ros-iron-mrpt-path-planning";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_path_planning-release/archive/release/iron/mrpt_path_planning/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "52dd87d6ab10510d96e613045180427845a0dafd5dcead3755fdcb1df87f9748";
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
