
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoconf, catkin, git, libtool, openssl, rsync, zlib }:
buildRosPackage {
  pname = "ros-noetic-grpc";
  version = "0.0.16-r1";

  src = fetchurl {
    url = "https://github.com/CogRobRelease/catkin_grpc-release/archive/release/noetic/grpc/0.0.16-1.tar.gz";
    name = "0.0.16-1.tar.gz";
    sha256 = "f841902330a8f363535a771617f5ed01bcc188dd2b775ce86b8d01b9ee6f5136";
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
