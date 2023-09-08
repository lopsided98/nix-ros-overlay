
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, protobuf }:
buildRosPackage {
  pname = "ros-humble-ecal";
  version = "5.12.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecal-release/archive/release/humble/ecal/5.12.0-2.tar.gz";
    name = "5.12.0-2.tar.gz";
    sha256 = "e4fcbb77ab8c5101b1a9c6a50d88f30ac0eb8b0dc9543822dda884cb98fa1457";
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
