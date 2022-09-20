
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, default-cfg-fkie, master-discovery-fkie, master-sync-fkie, multimaster-msgs-fkie, node-manager-fkie }:
buildRosPackage {
  pname = "ros-melodic-multimaster-fkie";
  version = "0.8.12";

  src = fetchurl {
    url = "https://github.com/fkie-release/multimaster_fkie-release/archive/release/melodic/multimaster_fkie/0.8.12-0.tar.gz";
    name = "0.8.12-0.tar.gz";
    sha256 = "1119b4d51db09a0811ca344110f064d21037ada2c8b35f8535b7b6986b996356";
  };

  buildType = "catkin";
  buildInputs = [ catkin ];
  propagatedBuildInputs = [ default-cfg-fkie master-discovery-fkie master-sync-fkie multimaster-msgs-fkie node-manager-fkie ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''The metapackage to combine the nodes required to establish and manage a multimaster network. 
    This requires no or minimal configuration. The changes are automatically detected and synchronized.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
