
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, mrpt2, mvsim }:
buildRosPackage {
  pname = "ros-iron-mrpt-path-planning";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mrpt_path_planning-release/archive/release/iron/mrpt_path_planning/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "894431be27b5c6f0b240413eef280e0312bf560abc545e2b28789d51b7b16c37";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ mrpt2 mvsim ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''Path planning and navigation algorithms for robots/vehicles moving on planar environments. This library builds upon mrpt-nav and the theory behind PTGs to generate libraries of &quot;motion primitives&quot; for vehicles with arbitrary shape and realistic kinematics and dynamics.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
