
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, rosboost-cfg, boost, mk, git, rosbuild, catkin, cacert, unzip, openssl, zlib }:
buildRosPackage {
  pname = "ros-melodic-assimp-devel";
  version = "2.1.12-r2";

  src = fetchurl {
    url = https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/assimp_devel/2.1.12-2.tar.gz;
    sha256 = "35553f415ba145a6c90ad40362835778cd08e946699051129cc840511dc6f564";
  };

  buildInputs = [ rosboost-cfg boost mk git rosbuild cacert unzip openssl zlib ];
  propagatedBuildInputs = [ zlib boost ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''assimp library'';
    license = with lib.licenses; [ lgpl2 ];
  };
}
