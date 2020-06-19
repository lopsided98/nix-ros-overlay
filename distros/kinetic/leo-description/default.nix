
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-kinetic-leo-description";
  version = "0.3.0-r1";

  src = fetchurl {
    url = "https://github.com/fictionlab-gbp/leo_description-release/archive/release/kinetic/leo_description/0.3.0-1.tar.gz";
    name = "0.3.0-1.tar.gz";
    sha256 = "15db55892ea9447b3c39aa2b5602edd8aec6809e5331f90e74eb3d1554bd90fc";
  };

  buildType = "catkin";
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''URDF Description package for Leo Rover'';
    license = with lib.licenses; [ mit ];
  };
}
