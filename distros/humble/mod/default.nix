
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, eigen, ompl }:
buildRosPackage {
  pname = "ros-humble-mod";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/OrebroUniversity/mod-release/archive/release/humble/mod/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "c9fabc4d5a7674c40135735f1a1dc1110d7aea83e59a84250708c082fc6d3049";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost eigen ompl ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Maps of Dynamics Package'';
    license = with lib.licenses; [ lgpl3Only ];
  };
}
