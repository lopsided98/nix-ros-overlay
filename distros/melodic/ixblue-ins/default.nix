
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ixblue-ins-driver, ixblue-ins-msgs }:
buildRosPackage {
  pname = "ros-melodic-ixblue-ins";
  version = "0.1.3-r1";

  src = fetchurl {
    url = "https://github.com/ixblue/ixblue_ins_stdbin_driver-release/archive/release/melodic/ixblue_ins/0.1.3-1.tar.gz";
    name = "0.1.3-1.tar.gz";
    sha256 = "e462dfe827fe388a6256bbf04ba11247d8c0da13f9e940bb2b1401b42d26c6c6";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ixblue-ins-driver ixblue-ins-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for iXblue INS driver'';
    license = with lib.licenses; [ mit ];
  };
}
