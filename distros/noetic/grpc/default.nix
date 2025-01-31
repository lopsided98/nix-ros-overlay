
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, autoconf, catkin, git, libtool, rsync, zlib }:
buildRosPackage {
  pname = "ros-noetic-grpc";
  version = "0.0.15-r3";

  src = fetchurl {
    url = "https://github.com/CogRobRelease/catkin_grpc-release/archive/release/noetic/grpc/0.0.15-3.tar.gz";
    name = "0.0.15-3.tar.gz";
    sha256 = "e009b35d165653c130fa964e86175ed6f6eaf92e05e7dba35254e332f4ae8f15";
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
