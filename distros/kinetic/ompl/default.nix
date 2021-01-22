
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen }:
buildRosPackage {
  pname = "ros-kinetic-ompl";
  version = "1.2.3-r1";

  src = fetchurl {
    url = "https://github.com/ros-gbp/ompl-release/archive/release/kinetic/ompl/1.2.3-1.tar.gz";
    name = "1.2.3-1.tar.gz";
    sha256 = "c2a90683339a8607111609b1c04a168e33f789b550f4d897498bf73211143d4d";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost eigen ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''OMPL is a free sampling-based motion planning library.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
