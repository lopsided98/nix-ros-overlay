
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, eigen, libnabo }:
buildRosPackage {
  pname = "ros-melodic-libpointmatcher";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/libpointmatcher-release/archive/release/melodic/libpointmatcher/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "26af003dfa5ec17281d65835377028672f83fe45b488c7923c078856fc0c3b99";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost catkin eigen libnabo ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''libpointmatcher is a modular ICP library, useful for robotics and computer vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
