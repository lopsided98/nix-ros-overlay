
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cmake, eigen, libnabo, yaml-cpp }:
buildRosPackage {
  pname = "ros-rolling-libpointmatcher";
  version = "1.4.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/libpointmatcher-release/archive/release/rolling/libpointmatcher/1.4.1-1.tar.gz";
    name = "1.4.1-1.tar.gz";
    sha256 = "c9e9635505876483aa54fc78a6557a2e08b69a991dc5e6e1f9783da9fd104e78";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ boost eigen libnabo yaml-cpp ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''libpointmatcher is a modular ICP library, useful for robotics and computer vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
