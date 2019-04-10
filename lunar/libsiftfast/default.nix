
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rospack, rosboost-cfg, boost, mk, catkin, pythonPackages, subversion, roslib }:
buildRosPackage {
  pname = "ros-lunar-libsiftfast";
  version = "2.1.11-r2";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/lunar/libsiftfast/2.1.11-2.tar.gz;
    sha256 = "b7aac32a5c2a324d64f9678a2ab9858ad9307dd71513a2ae6bb771546ad38720";
  };

  buildInputs = [ rospack pythonPackages.numpy rosboost-cfg boost mk roslib subversion ];
  propagatedBuildInputs = [ pythonPackages.numpy boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Library to compute SIFT features'';
    #license = lib.licenses.LGPL;
  };
}
