
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin }:
buildRosPackage {
  pname = "ros-melodic-copernicus-base";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/botsync-gbp/copernicus-release/archive/release/melodic/copernicus_base/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "cdd488a29f262e20e249e710e488cdd3dffb8bf78055aa322520431316eeac5c";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The copernicus_base package'';
    license = with lib.licenses; [ bsd3 ];
  };
}
