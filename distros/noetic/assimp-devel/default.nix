
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, boost, cacert, catkin, git, mk, openssl, rosboost-cfg, rosbuild, unzip, zlib }:
buildRosPackage {
  pname = "ros-noetic-assimp-devel";
  version = "2.1.31-r4";

  src = fetchurl {
    url = "https://github.com/tork-a/jsk_3rdparty-release/archive/release/noetic/assimp_devel/2.1.31-4.tar.gz";
    name = "2.1.31-4.tar.gz";
    sha256 = "c74d6c9c896156149c97b81003b76ab80c19cfba0bf23548e23534e62f1cfbb1";
  };

  buildType = "catkin";
  buildInputs = [ cacert catkin git mk openssl rosboost-cfg rosbuild unzip ];
  propagatedBuildInputs = [ boost zlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "assimp library";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
