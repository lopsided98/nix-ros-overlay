
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, boost, eigen, ompl }:
buildRosPackage {
  pname = "ros-humble-mod";
  version = "1.1.1-r1";

  src = fetchurl {
    url = "https://github.com/OrebroUniversity/mod-release/archive/release/humble/mod/1.1.1-1.tar.gz";
    name = "1.1.1-1.tar.gz";
    sha256 = "c13928fc2e87fa8964d7daa30c172ff5915051ef999ad90cf55d94dbea97d666";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ boost eigen ompl ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Maps of Dynamics Package";
    license = with lib.licenses; [ lgpl3Only ];
  };
}
