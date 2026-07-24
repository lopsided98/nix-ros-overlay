
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cmake, doxygen, eigen, eigenpy, git, graphviz, jrl-cmakemodules, pinocchio }:
buildRosPackage {
  pname = "ros-kilted-ndcurves";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ndcurves-release/archive/release/kilted/ndcurves/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "8d8deb13d057b5524fe5cec648a9308417d854a0369de9a30772c14cf4815f89";
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
