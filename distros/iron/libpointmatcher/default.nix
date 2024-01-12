
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, libnabo }:
buildRosPackage {
  pname = "ros-iron-libpointmatcher";
  version = "1.3.1-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libpointmatcher-release/archive/release/iron/libpointmatcher/1.3.1-5.tar.gz";
    name = "1.3.1-5.tar.gz";
    sha256 = "5b637123f697980eeb0cd3a8fe03b9fc905bc5139adbd2202bb73c964eedafd9";
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
