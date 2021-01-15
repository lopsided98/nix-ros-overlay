
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, libpng }:
buildRosPackage {
  pname = "ros-kinetic-multisense-lib";
  version = "4.0.4-r1";

  src = fetchurl {
    url = "https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/kinetic/multisense_lib/4.0.4-1.tar.gz";
    name = "4.0.4-1.tar.gz";
    sha256 = "c7453273fdb3f37ad3d71b5656641e1117b1e401d10efcdbc0602e4c3ab7168d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge libpng ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense_lib'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
