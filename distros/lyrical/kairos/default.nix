
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest, python3, uncrustify }:
buildRosPackage {
  pname = "ros-lyrical-kairos";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/PlanSys2/kairos-release/archive/release/lyrical/kairos/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "3bd4554bc427be9baf291aa1272405f2db4b06fe867de3d8d64cddfbe8a3fd75";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  checkInputs = [ gtest python3 uncrustify ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "Modern temporal and numeric PDDL planner, usable as a library and as an executable";
    license = with lib.licenses; [ asl20 ];
  };
}
