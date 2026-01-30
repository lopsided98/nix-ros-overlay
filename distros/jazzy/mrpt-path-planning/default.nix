
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt-libgui, mrpt-libmaps, mrpt-libnav, mrpt-libtclap, mvsim }:
buildRosPackage {
  pname = "ros-jazzy-mrpt-path-planning";
  version = "0.2.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_path_planning-release/archive/release/jazzy/mrpt_path_planning/0.2.5-1.tar.gz";
    name = "0.2.5-1.tar.gz";
    sha256 = "66a2c0403f48433d1197cac1d98dda0d6572c1903c37a17e06756aa73506fe4e";
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
