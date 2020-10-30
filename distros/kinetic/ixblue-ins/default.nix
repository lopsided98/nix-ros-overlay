
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ixblue-ins-driver, ixblue-ins-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ixblue-ins";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ixblue/ixblue_ins_stdbin_driver-release/archive/release/kinetic/ixblue_ins/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "20b054a6ead40117a92e189b3e2e003a0357870bc5d8e68ca2f8d42d0de68d86";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ixblue-ins-driver ixblue-ins-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for iXblue INS driver'';
    license = with lib.licenses; [ mit ];
  };
}
