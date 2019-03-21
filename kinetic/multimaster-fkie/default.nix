
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, master-sync-fkie, default-cfg-fkie, catkin, multimaster-msgs-fkie, node-manager-fkie, master-discovery-fkie }:
buildRosPackage {
  pname = "ros-kinetic-multimaster-fkie";
  version = "0.8.11";

  src = fetchurl {
    url = https://github.com/fkie-release/multimaster_fkie-release/archive/release/kinetic/multimaster_fkie/0.8.11-0.tar.gz;
    sha256 = "0e0c58a1286061a2a2fc7a7ae3aca3913e3e51e67e3a13f940aba5a5c2f5d934";
  };

  propagatedBuildInputs = [ master-sync-fkie default-cfg-fkie node-manager-fkie master-discovery-fkie multimaster-msgs-fkie ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The metapackage to combine the nodes required to establish and manage a multimaster network. 
    This requires no or minimal configuration. The changes are automatically detected and synchronized.'';
    #license = lib.licenses.BSD;
  };
}
