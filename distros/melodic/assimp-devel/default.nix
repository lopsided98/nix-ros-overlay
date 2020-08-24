
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cacert, catkin, git, mk, openssl, rosboost-cfg, rosbuild, unzip, zlib }:
buildRosPackage {
  pname = "ros-melodic-assimp-devel";
  version = "2.1.21-r2";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/assimp_devel/2.1.21-2.tar.gz";
    name = "2.1.21-2.tar.gz";
    sha256 = "e60cc1875f96f4f097b640a17413a2c073d5efdcdb08e1b4353c8618e20216e2";
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
