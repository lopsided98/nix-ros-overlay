
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, master-sync-fkie, default-cfg-fkie, catkin, multimaster-msgs-fkie, node-manager-fkie, master-discovery-fkie }:
buildRosPackage {
  pname = "ros-melodic-multimaster-fkie";
  version = "0.8.10";

  src = fetchurl {
    url = https://github.com/fkie-release/multimaster_fkie-release/archive/release/melodic/multimaster_fkie/0.8.10-0.tar.gz;
    sha256 = "7fa041261a218ef23fc6080700f61994990edfff46ed23e6c945c004965ce500";
  };

  propagatedBuildInputs = [ master-sync-fkie default-cfg-fkie node-manager-fkie master-discovery-fkie multimaster-msgs-fkie ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The metapackage to combine the nodes required to establish and manage a multimaster network. 
    This requires no or minimal configuration. The changes are automatically detected and synchronized.'';
    #license = lib.licenses.BSD;
  };
}
