
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, cv-bridge, libpng }:
buildRosPackage {
  pname = "ros-melodic-multisense-lib";
  version = "4.0.4-r1";

  src = fetchurl {
    url = "https://github.com/carnegieroboticsllc/multisense_ros-release/archive/release/melodic/multisense_lib/4.0.4-1.tar.gz";
    name = "4.0.4-1.tar.gz";
    sha256 = "286706a49f91483bd9f5407a9580eedd3d7fabdbdb0deef85d1cfa2019f52d52";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ cv-bridge libpng ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''multisense_lib'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
