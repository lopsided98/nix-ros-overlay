
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, flann, ode, pkg-config }:
buildRosPackage {
  pname = "ros-noetic-ompl";
  version = "1.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ompl-release/archive/release/noetic/ompl/1.5.2-1.tar.gz";
    name = "1.5.2-1.tar.gz";
    sha256 = "1f45c6363e62424015aa5efdb27a7b0412dd9018676149f23200126241b6715a";
  };

  buildType = "cmake";
  buildInputs = [ cmake pkg-config ];
  propagatedBuildInputs = [ boost eigen flann ode ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''OMPL is a free sampling-based motion planning library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
