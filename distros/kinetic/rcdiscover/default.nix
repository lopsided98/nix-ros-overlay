
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake }:
buildRosPackage {
  pname = "ros-kinetic-rcdiscover";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rcdiscover-release/archive/release/kinetic/rcdiscover/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "b2209e39f2944eadd36d0aece80cbc376c8073b2f6cf8431464291c12bd280b6";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package contains tools for the discovery of rc_visard sensors via GigE Vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
