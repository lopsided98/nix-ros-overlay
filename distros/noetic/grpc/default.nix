
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoconf, catkin, git, libtool, rsync, zlib }:
buildRosPackage {
  pname = "ros-noetic-grpc";
  version = "0.0.10-r2";

  src = fetchurl {
    url = "https://github.com/CogRobRelease/catkin_grpc-release/archive/release/noetic/grpc/0.0.10-2.tar.gz";
    name = "0.0.10-2.tar.gz";
    sha256 = "96124c592e0134a9f13f0cde8f27ba14a1d0f1c76b514bbdb1cfea75ab686991";
  };

  buildType = "catkin";
  buildInputs = [ autoconf git libtool rsync zlib ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Catkinized gRPC Package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
