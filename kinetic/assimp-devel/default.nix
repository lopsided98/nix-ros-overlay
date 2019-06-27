
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosboost-cfg, boost, mk, git, rosbuild, catkin, cacert, unzip, openssl, zlib }:
buildRosPackage {
  pname = "ros-kinetic-assimp-devel";
  version = "2.1.12-r1";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/assimp_devel/2.1.12-1.tar.gz;
    sha256 = "b84f03d8af521409a5dadfb16b050b037bf24bfc55a9f6ca89f1e463adfa07d7";
  };

  buildInputs = [ rosboost-cfg boost mk git rosbuild cacert unzip openssl zlib ];
  propagatedBuildInputs = [ zlib boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''assimp library'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
