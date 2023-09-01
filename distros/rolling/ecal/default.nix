
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, protobuf }:
buildRosPackage {
  pname = "ros-rolling-ecal";
  version = "5.12.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecal-release/archive/release/rolling/ecal/5.12.0-1.tar.gz";
    name = "5.12.0-1.tar.gz";
    sha256 = "64d4b22451f502a9363d6d069cc6be695f83e63becd092768a44778f2ae104c2";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ protobuf ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''eCAL - enhanced Communication Abstraction Layer. A fast publish-subscribe cross-plattform middleware using Shared Memory and UDP.'';
    license = with lib.licenses; [ asl20 ];
  };
}
