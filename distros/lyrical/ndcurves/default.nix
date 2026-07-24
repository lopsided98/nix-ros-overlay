
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cmake, doxygen, eigen, eigenpy, git, graphviz, jrl-cmakemodules, pinocchio }:
buildRosPackage {
  pname = "ros-lyrical-ndcurves";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ndcurves-release/archive/release/lyrical/ndcurves/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "a5054845e363a570ce0a2fcd388c9aff14b2bacccfcd868eed09f75da9c3ee33";
  };

  buildType = "cmake";
  buildInputs = [ cmake doxygen git ];
  propagatedBuildInputs = [ ament-cmake boost eigen eigenpy graphviz jrl-cmakemodules pinocchio ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "A template-based Library for creating curves of arbitrary order and dimension";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
