
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, master-sync-fkie, default-cfg-fkie, catkin, multimaster-msgs-fkie, node-manager-fkie, master-discovery-fkie }:
buildRosPackage {
  pname = "ros-kinetic-multimaster-fkie";
  version = "0.8.12";

  src = fetchurl {
    url = https://github.com/fkie-release/multimaster_fkie-release/archive/release/kinetic/multimaster_fkie/0.8.12-0.tar.gz;
    sha256 = "d1ecc94aadeea0b43f0a89223fa0d559cb3cf7198faa4caa8b68b656b1261408";
  };

  propagatedBuildInputs = [ master-sync-fkie default-cfg-fkie multimaster-msgs-fkie node-manager-fkie master-discovery-fkie ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The metapackage to combine the nodes required to establish and manage a multimaster network. 
    This requires no or minimal configuration. The changes are automatically detected and synchronized.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
