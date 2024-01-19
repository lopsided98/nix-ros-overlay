
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, protobuf }:
buildRosPackage {
  pname = "ros-iron-ecal";
  version = "5.12.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecal-release/archive/release/iron/ecal/5.12.0-3.tar.gz";
    name = "5.12.0-3.tar.gz";
    sha256 = "b1db4d416cdbb1d895eb8e0fd9a9d8f09842780bb7bd3892a5aa80294708384e";
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
