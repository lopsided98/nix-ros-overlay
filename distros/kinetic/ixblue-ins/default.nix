
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ixblue-ins-driver, ixblue-ins-msgs }:
buildRosPackage {
  pname = "ros-kinetic-ixblue-ins";
  version = "0.1.5-r1";

  src = fetchurl {
    url = "https://github.com/ixblue/ixblue_ins_stdbin_driver-release/archive/release/kinetic/ixblue_ins/0.1.5-1.tar.gz";
    name = "0.1.5-1.tar.gz";
    sha256 = "9a07840d6689ad23623fa8665ef092a1b1246ae8a96dd499cf21b18bac68e4d2";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ixblue-ins-driver ixblue-ins-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for iXblue INS driver'';
    license = with lib.licenses; [ mit ];
  };
}
