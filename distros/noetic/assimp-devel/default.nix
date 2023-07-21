
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cacert, catkin, git, mk, openssl, rosboost-cfg, rosbuild, unzip, zlib }:
buildRosPackage {
  pname = "ros-noetic-assimp-devel";
  version = "2.1.27-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/assimp_devel/2.1.27-1.tar.gz";
    name = "2.1.27-1.tar.gz";
    sha256 = "6dd2b3289a01648877b3269afce1ff5a1c639f430c00f0e52bfd6c03b70c84eb";
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
