
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest, python3, uncrustify }:
buildRosPackage {
  pname = "ros-kilted-kairos";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/PlanSys2/kairos-release/archive/release/kilted/kairos/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "fa219645db0f0ee76ba24e5087d69d0dd9cf927e4747befe2e521c258de6a5eb";
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
