
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, libnabo }:
buildRosPackage {
  pname = "ros-galactic-libpointmatcher";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/libpointmatcher-release/archive/release/galactic/libpointmatcher/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "c7c042ff46ba25ea8b16d3091c8274e2bcd5716965b89a2a210c26e0e1722094";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost eigen libnabo ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''libpointmatcher is a modular ICP library, useful for robotics and computer vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
