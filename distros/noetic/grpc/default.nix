
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoconf, catkin, git, libtool, rsync, zlib }:
buildRosPackage {
  pname = "ros-noetic-grpc";
  version = "0.0.11-r1";

  src = fetchurl {
    url = "https://github.com/CogRobRelease/catkin_grpc-release/archive/release/noetic/grpc/0.0.11-1.tar.gz";
    name = "0.0.11-1.tar.gz";
    sha256 = "5afcb6a7099876e45af084052b7aa7383f80bdc407d82fb15da46124a7e39c43";
  };

  buildType = "catkin";
  buildInputs = [ autoconf catkin git libtool zlib ];
  propagatedBuildInputs = [ rsync ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''Catkinized gRPC Package'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
