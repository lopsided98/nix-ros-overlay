
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cmake }:
buildRosPackage {
  pname = "ros-kinetic-rcdiscover";
  version = "1.0.3-r1";

  src = fetchurl {
    url = "https://github.com/roboception-gbp/rcdiscover-release/archive/release/kinetic/rcdiscover/1.0.3-1.tar.gz";
    name = "1.0.3-1.tar.gz";
    sha256 = "4ca3b9ee9de3fc993e5bba81f3e1c4f1ab393394f31babb46aaa940fe37208ad";
  };

  buildType = "cmake";
  propagatedBuildInputs = [ catkin ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package contains tools for the discovery of Roboception devices via GigE Vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
