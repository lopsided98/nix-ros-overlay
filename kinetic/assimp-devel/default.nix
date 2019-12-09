
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, git, boost, rosboost-cfg, catkin, unzip, cacert, openssl, zlib, rosbuild, mk }:
buildRosPackage {
  pname = "ros-kinetic-assimp-devel";
  version = "2.1.14-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/assimp_devel/2.1.14-1.tar.gz";
    name = "2.1.14-1.tar.gz";
    sha256 = "d2463baec0806b02f96ccd2444890ebe81fd0503e573c01051e94deb026e1da2";
  };

  buildType = "catkin";
  buildInputs = [ git boost rosboost-cfg unzip cacert openssl zlib rosbuild mk ];
  propagatedBuildInputs = [ boost zlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''assimp library'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
