
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoconf, git, catkin, rsync, libtool, zlib }:
buildRosPackage {
  pname = "ros-lunar-grpc";
  version = "0.0.9";

  src = fetchurl {
    url = https://github.com/CogRobRelease/catkin_grpc-release/archive/release/lunar/grpc/0.0.9-0.tar.gz;
    sha256 = "b27ee639070879345d8df241ea5fe0f9b8c606f8d7e99af9244f5abecdb0d2ff";
  };

  buildInputs = [ zlib autoconf git rsync libtool ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Catkinized gRPC Package'';
    #license = lib.licenses.BSD;
  };
}
