
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, pkg-config }:
buildRosPackage {
  pname = "ros-noetic-ompl";
  version = "1.5.1-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ompl-release/archive/release/noetic/ompl/1.5.1-1.tar.gz";
    name = "1.5.1-1.tar.gz";
    sha256 = "c1001b27d7f19cb9f8b6b9e574ba418505c2a427a0add635dc5daf751d0fa47f";
  };

  buildType = "cmake";
  buildInputs = [ cmake pkg-config ];
  propagatedBuildInputs = [ boost eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''OMPL is a free sampling-based motion planning library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
