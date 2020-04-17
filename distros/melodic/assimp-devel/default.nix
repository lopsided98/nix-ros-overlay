
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cacert, catkin, git, mk, openssl, rosboost-cfg, rosbuild, unzip, zlib }:
buildRosPackage {
  pname = "ros-melodic-assimp-devel";
  version = "2.1.17-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/assimp_devel/2.1.17-1.tar.gz";
    name = "2.1.17-1.tar.gz";
    sha256 = "71c8bba4ddef4728059004c23040c9d2aabb9f7fafe882f8e4271652408eed71";
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
