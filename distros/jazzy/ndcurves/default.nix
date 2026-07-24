
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cmake, doxygen, eigen, eigenpy, git, graphviz, jrl-cmakemodules, pinocchio }:
buildRosPackage {
  pname = "ros-jazzy-ndcurves";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ndcurves-release/archive/release/jazzy/ndcurves/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "eeaa2f31f2062f2b5e5fe1468c206e3e47b86e38f29d3665471590a3874005cd";
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
