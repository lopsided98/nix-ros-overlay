
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, protobuf }:
buildRosPackage {
  pname = "ros-rolling-ecal";
  version = "5.12.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecal-release/archive/release/rolling/ecal/5.12.0-4.tar.gz";
    name = "5.12.0-4.tar.gz";
    sha256 = "2172df2f2570a0594900ad09a7cded393b1fd16e1d53256c2865037eda3a5ce1";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  propagatedBuildInputs = [ protobuf ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "eCAL - enhanced Communication Abstraction Layer. A fast publish-subscribe cross-plattform middleware using Shared Memory and UDP.";
    license = with lib.licenses; [ asl20 ];
  };
}
