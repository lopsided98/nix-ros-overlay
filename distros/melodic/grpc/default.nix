
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoconf, catkin, git, libtool, rsync, zlib }:
buildRosPackage {
  pname = "ros-melodic-grpc";
  version = "0.0.10";

  src = fetchurl {
    url = "https://github.com/CogRobRelease/catkin_grpc-release/archive/release/melodic/grpc/0.0.10-0.tar.gz";
    name = "0.0.10-0.tar.gz";
    sha256 = "c68b25e98a58f726e6d9a86a1a16c943c468e8f1d426781f9086cd31c525e7b2";
  };

  buildType = "catkin";
  buildInputs = [ autoconf catkin git libtool rsync zlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Catkinized gRPC Package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
