
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ixblue-ins-driver, ixblue-ins-msgs }:
buildRosPackage {
  pname = "ros-melodic-ixblue-ins";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ixblue/ixblue_ins_stdbin_driver-release/archive/release/melodic/ixblue_ins/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "69760d7da2a07f7d39257f057ce47e0ced915cc333912737f046931d708a98ec";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ ixblue-ins-driver ixblue-ins-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for iXblue INS driver'';
    license = with lib.licenses; [ mit ];
  };
}
