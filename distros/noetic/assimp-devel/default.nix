
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cacert, catkin, git, mk, openssl, rosboost-cfg, rosbuild, unzip, zlib }:
buildRosPackage {
  pname = "ros-noetic-assimp-devel";
  version = "2.1.28-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/assimp_devel/2.1.28-1.tar.gz";
    name = "2.1.28-1.tar.gz";
    sha256 = "37b99395920abb52017659d1ff642d22274e8b2b38c4b1e3706d6cc42a51b54e";
  };

  buildType = "catkin";
  buildInputs = [ cacert catkin git mk openssl rosboost-cfg rosbuild unzip ];
  propagatedBuildInputs = [ boost zlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''assimp library'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
