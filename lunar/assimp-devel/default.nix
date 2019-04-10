
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosboost-cfg, boost, mk, git, rosbuild, catkin, cacert, unzip, openssl, zlib }:
buildRosPackage {
  pname = "ros-lunar-assimp-devel";
  version = "2.1.11-r2";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/lunar/assimp_devel/2.1.11-2.tar.gz;
    sha256 = "1c3d3e7b5133a2d20272785648ad5d27797c84532344a97fcea72ec4fe78cfc5";
  };

  buildInputs = [ rosboost-cfg boost mk git rosbuild cacert unzip openssl zlib ];
  propagatedBuildInputs = [ zlib boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''assimp library'';
    #license = lib.licenses.LGPL;
  };
}
