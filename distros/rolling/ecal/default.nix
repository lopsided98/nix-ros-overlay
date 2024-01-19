
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, protobuf }:
buildRosPackage {
  pname = "ros-rolling-ecal";
  version = "5.12.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecal-release/archive/release/rolling/ecal/5.12.0-3.tar.gz";
    name = "5.12.0-3.tar.gz";
    sha256 = "758854bdada0eae5f04657c8e6056a19dde85cee23f0064c24ed90fa7fba8b89";
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
