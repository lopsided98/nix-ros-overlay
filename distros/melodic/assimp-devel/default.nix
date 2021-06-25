
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cacert, catkin, git, mk, openssl, rosboost-cfg, rosbuild, unzip, zlib }:
buildRosPackage {
  pname = "ros-melodic-assimp-devel";
  version = "2.1.22-r1";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/assimp_devel/2.1.22-1.tar.gz";
    name = "2.1.22-1.tar.gz";
    sha256 = "afc880a08df6dd79c65228e3950bf1fccd18d0e14c393d2da6b191049ec67188";
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
