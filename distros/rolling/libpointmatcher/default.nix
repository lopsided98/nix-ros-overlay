
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, libnabo }:
buildRosPackage {
  pname = "ros-rolling-libpointmatcher";
  version = "1.3.1-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libpointmatcher-release/archive/release/rolling/libpointmatcher/1.3.1-2.tar.gz";
    name = "1.3.1-2.tar.gz";
    sha256 = "e6b852f80337c2faa7d5a452c9345a3d30fecd151930d283326a7cb14d335f95";
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
