
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosboost-cfg, boost, mk, git, rosbuild, catkin, cacert, unzip, openssl, zlib }:
buildRosPackage {
  pname = "ros-kinetic-assimp-devel";
  version = "2.1.13-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/assimp_devel/2.1.13-1.tar.gz";
    name = "2.1.13-1.tar.gz";
    sha256 = "940210d0c2d6ed8bfdb1e63c8675d928a2359f9391ae3aae9ed4ec06efc2ec66";
  };

  buildType = "catkin";
  buildInputs = [ rosboost-cfg boost mk git rosbuild cacert unzip openssl zlib ];
  propagatedBuildInputs = [ zlib boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''assimp library'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
