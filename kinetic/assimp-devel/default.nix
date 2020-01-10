
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cacert, catkin, git, mk, openssl, rosboost-cfg, rosbuild, unzip, zlib }:
buildRosPackage {
  pname = "ros-kinetic-assimp-devel";
  version = "2.1.15-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/assimp_devel/2.1.15-1.tar.gz";
    name = "2.1.15-1.tar.gz";
    sha256 = "afdb80c7c69753f5fd371a86bcc0ab74f41a1d96a369e926b2291833b4aab5ef";
  };

  buildType = "catkin";
  buildInputs = [ cacert git mk openssl rosboost-cfg rosbuild unzip ];
  propagatedBuildInputs = [ boost zlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''assimp library'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
