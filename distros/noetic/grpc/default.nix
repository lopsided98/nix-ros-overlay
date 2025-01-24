
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoconf, catkin, git, libtool, rsync, zlib }:
buildRosPackage {
  pname = "ros-noetic-grpc";
  version = "0.0.13-r3";

  src = fetchurl {
    url = "https://github.com/CogRobRelease/catkin_grpc-release/archive/release/noetic/grpc/0.0.13-3.tar.gz";
    name = "0.0.13-3.tar.gz";
    sha256 = "1f566833a9cbc550f79ac75a7a76bd75adce0639d2151faca001def482cdfe0b";
  };

  buildType = "catkin";
  buildInputs = [ autoconf catkin git libtool zlib ];
  propagatedBuildInputs = [ rsync ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = "Catkinized gRPC Package";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
