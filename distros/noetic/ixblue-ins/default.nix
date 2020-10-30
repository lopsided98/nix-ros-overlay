
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, ixblue-ins-driver, ixblue-ins-msgs }:
buildRosPackage {
  pname = "ros-noetic-ixblue-ins";
  version = "0.1.4-r1";

  src = fetchurl {
    url = "https://github.com/ixblue/ixblue_ins_stdbin_driver-release/archive/release/noetic/ixblue_ins/0.1.4-1.tar.gz";
    name = "0.1.4-1.tar.gz";
    sha256 = "b3556595467ee028c39e2e1500bfce3fbb7a9d7e0804fefde04a79d812f0c812";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ ixblue-ins-driver ixblue-ins-msgs ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Metapackage for iXblue INS driver'';
    license = with lib.licenses; [ mit ];
  };
}
