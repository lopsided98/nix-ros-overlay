
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, flann, ode, pkg-config }:
buildRosPackage {
  pname = "ros-galactic-ompl";
  version = "1.5.2-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ompl-release/archive/release/galactic/ompl/1.5.2-1.tar.gz";
    name = "1.5.2-1.tar.gz";
    sha256 = "8d934b56bf7beadf142bed18a7053168461ea9c6c9023817680c7e2a17a28b70";
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
