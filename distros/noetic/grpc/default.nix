
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoconf, catkin, git, libtool, openssl, rsync, zlib }:
buildRosPackage {
  pname = "ros-noetic-grpc";
  version = "0.0.17-r1";

  src = fetchurl {
    url = "https://github.com/CogRobRelease/catkin_grpc-release/archive/release/noetic/grpc/0.0.17-1.tar.gz";
    name = "0.0.17-1.tar.gz";
    sha256 = "17f90c00508cbcb79f2375cde661244f41e79db5d9d5f04cafc2251c6e5003ce";
  };

  buildType = "catkin";
  buildInputs = [ autoconf catkin git libtool ];
  propagatedBuildInputs = [ openssl rsync zlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Catkinized gRPC Package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
