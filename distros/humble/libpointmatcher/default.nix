
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, libnabo }:
buildRosPackage {
  pname = "ros-humble-libpointmatcher";
  version = "1.3.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libpointmatcher-release/archive/release/humble/libpointmatcher/1.3.1-3.tar.gz";
    name = "1.3.1-3.tar.gz";
    sha256 = "2b62f5d7134ec1460128f820665f8435f3b8cabc4a9139a6cd1bdb61f89e4be7";
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
