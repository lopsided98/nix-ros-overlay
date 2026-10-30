
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest, python3, uncrustify }:
buildRosPackage {
  pname = "ros-humble-kairos";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/PlanSys2/kairos-release/archive/release/humble/kairos/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "df2b3aa8ef4df477cea6b7eeb5140bcc578ef1681c8195d3e97c1d9011bf645c";
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
