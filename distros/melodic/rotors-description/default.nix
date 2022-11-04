
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-rotors-description";
  version = "2.2.3";

  src = fetchurl {
    url = "https://github.com/ethz-asl/rotors_simulator-release/archive/release/melodic/rotors_description/2.2.3-0.tar.gz";
    name = "2.2.3-0.tar.gz";
    sha256 = "414a6facf153f956359a4bb6faffc2b01b3615b25f5b9b8a0f5141e268a982f1";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The rotors_description package provides URDF models of the AscTec multicopters.'';
    license = with lib.licenses; [ "ASL-2.0" ];
  };
}
