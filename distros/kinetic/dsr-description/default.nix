
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-dsr-description";
  version = "0.9.6-r1";

  src = fetchurl {
    url = "https://github.com/doosan-robotics/doosan-robot-release/archive/release/kinetic/dsr_description/0.9.6-1.tar.gz";
    name = "0.9.6-1.tar.gz";
    sha256 = "d6c74e6f4366dc16835700d5a2dd6f7307ed94f0a6fd47af91a1d50959e925d3";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The dsr_description package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
