
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, git, libtool, catkin, rsync, autoconf, zlib }:
buildRosPackage {
  pname = "ros-kinetic-grpc";
  version = "0.0.10";

  src = fetchurl {
    url = "https://github.com/CogRobRelease/catkin_grpc-release/archive/release/kinetic/grpc/0.0.10-0.tar.gz";
    name = "0.0.10-0.tar.gz";
    sha256 = "0cf8a41e16f5b0df5e6a18710cb3e189747ba48c8ce849e5601b987d682ffc4f";
  };

  buildType = "catkin";
  buildInputs = [ git libtool rsync autoconf zlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Catkinized gRPC Package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
