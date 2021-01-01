
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cacert, catkin, git, mk, openssl, rosboost-cfg, rosbuild, unzip, zlib }:
buildRosPackage {
  pname = "ros-kinetic-assimp-devel";
  version = "2.1.17-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/kinetic/assimp_devel/2.1.17-1.tar.gz";
    name = "2.1.17-1.tar.gz";
    sha256 = "c639549140d929dccfcd19f7813f79b3ec6469dabe6fbd67c68f990c49f9a891";
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
