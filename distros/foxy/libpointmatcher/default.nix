
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, libnabo }:
buildRosPackage {
  pname = "ros-foxy-libpointmatcher";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/libpointmatcher-release/archive/release/foxy/libpointmatcher/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "6ce722319db4c641a59403efa34f3ecb50e88877703659db8e561be52bb3f952";
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
