
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fkie-master-discovery, fkie-master-sync, fkie-multimaster-msgs, fkie-node-manager, fkie-node-manager-daemon }:
buildRosPackage {
  pname = "ros-noetic-fkie-multimaster";
  version = "1.2.2-r1";

  src = fetchurl {
    url = "https://github.com/fkie-release/multimaster_fkie-release/archive/release/noetic/fkie_multimaster/1.2.2-1.tar.gz";
    name = "1.2.2-1.tar.gz";
    sha256 = "066690e2f0cacd9e5674d6651e91cbf3766814c6fc25ecb8a92b6902b8711962";
  };

  buildType = "catkin";
  propagatedBuildInputs = [ fkie-master-discovery fkie-master-sync fkie-multimaster-msgs fkie-node-manager fkie-node-manager-daemon ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The metapackage to combine the nodes required to establish and manage a multimaster network.
    This requires no or minimal configuration. The changes are automatically detected and synchronized.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
