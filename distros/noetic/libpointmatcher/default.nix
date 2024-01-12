
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, catkin, cmake, eigen, libnabo }:
buildRosPackage {
  pname = "ros-noetic-libpointmatcher";
  version = "1.3.1-r1";

  src = fetchurl {
    url = "https://github.com/nobleo/libpointmatcher-release/archive/release/noetic/libpointmatcher/1.3.1-1.tar.gz";
    name = "1.3.1-1.tar.gz";
    sha256 = "858e42e3cbc55c43c5dae2166c9f40a6577af8fa1b0c1b03336ba8029ad99a78";
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
