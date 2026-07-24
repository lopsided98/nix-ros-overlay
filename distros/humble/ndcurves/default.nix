
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, cmake, doxygen, eigen, eigenpy, git, graphviz, jrl-cmakemodules, pinocchio }:
buildRosPackage {
  pname = "ros-humble-ndcurves";
  version = "2.3.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ndcurves-release/archive/release/humble/ndcurves/2.3.0-1.tar.gz";
    name = "2.3.0-1.tar.gz";
    sha256 = "b14af4ba20eed25492de882353266b5382e275b2a49dd3c81a6454c14a805a92";
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
