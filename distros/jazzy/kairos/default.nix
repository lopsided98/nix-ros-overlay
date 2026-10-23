
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, gtest, python3, uncrustify }:
buildRosPackage {
  pname = "ros-jazzy-kairos";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/PlanSys2/kairos-release/archive/release/jazzy/kairos/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "9db25b7979cf0a5244ba765cd70ccf5a45e431a6dbce18fcfce4741822d1f24e";
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
