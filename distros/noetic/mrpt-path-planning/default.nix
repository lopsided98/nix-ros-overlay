
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt2, mvsim }:
buildRosPackage {
  pname = "ros-noetic-mrpt-path-planning";
  version = "0.1.2-r1";

  src = fetchurl {
    url = "https://github.com/mrpt-ros-pkg-release/mrpt_path_planning-release/archive/release/noetic/mrpt_path_planning/0.1.2-1.tar.gz";
    name = "0.1.2-1.tar.gz";
    sha256 = "039f399e94afe2e16c79c811679e80978e0d86a2be56cd937ba0e4fc3d4ceb29";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mrpt2 mvsim ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Path planning and navigation algorithms for robots/vehicles moving on planar environments. This library builds upon mrpt-nav and the theory behind PTGs to generate libraries of &quot;motion primitives&quot; for vehicles with arbitrary shape and realistic kinematics and dynamics.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
