
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, fkie-master-discovery, fkie-master-sync, fkie-multimaster-msgs, fkie-node-manager, fkie-node-manager-daemon }:
buildRosPackage {
  pname = "ros-noetic-fkie-multimaster";
  version = "1.2.5-r2";

  src = fetchurl {
    url = "https://github.com/fkie-release/multimaster_fkie-release/archive/release/noetic/fkie_multimaster/1.2.5-2.tar.gz";
    name = "1.2.5-2.tar.gz";
    sha256 = "fefeb71fe19e5cf4fb799cd4ca8be0413da2aecb722b2b0323dc77c9ac94b79d";
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
