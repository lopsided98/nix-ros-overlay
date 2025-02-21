
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoconf, catkin, git, libtool, openssl, rsync, zlib }:
buildRosPackage {
  pname = "ros-noetic-grpc";
  version = "0.0.16-r2";

  src = fetchurl {
    url = "https://github.com/CogRobRelease/catkin_grpc-release/archive/release/noetic/grpc/0.0.16-2.tar.gz";
    name = "0.0.16-2.tar.gz";
    sha256 = "516e10d1e9ad6756572e66595f9bd121c2616c146568a0febd839af3ba566379";
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
