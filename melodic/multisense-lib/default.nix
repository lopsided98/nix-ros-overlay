
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, libpng }:
buildRosPackage {
  pname = "ros-melodic-multisense-lib";
  version = "4.0.3-r1";

  src = fetchurl {
    url = "https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/melodic/multisense_lib/4.0.3-1.tar.gz";
    name = "4.0.3-1.tar.gz";
    sha256 = "3798d1647fa83496c64b28e33de71dabeb701a98b7ab7e74651ed828c4ee033d";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ cv-bridge libpng ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense_lib'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
