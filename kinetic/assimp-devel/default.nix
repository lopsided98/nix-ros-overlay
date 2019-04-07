
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosboost-cfg, boost, mk, git, rosbuild, catkin, cacert, unzip, openssl, zlib }:
buildRosPackage {
  pname = "ros-kinetic-assimp-devel";
  version = "2.1.11";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/assimp_devel/2.1.11-0.tar.gz;
    sha256 = "10ed47e35b00a2584203626408b5f2f694122bf28873dabc556a47b8c0f27e84";
  };

  buildInputs = [ rosboost-cfg boost mk git rosbuild cacert unzip openssl zlib ];
  propagatedBuildInputs = [ zlib boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''assimp library'';
    #license = lib.licenses.LGPL;
  };
}
