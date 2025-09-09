
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, protobuf }:
buildRosPackage {
  pname = "ros-kilted-ecal";
  version = "5.12.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecal-release/archive/release/kilted/ecal/5.12.0-5.tar.gz";
    name = "5.12.0-5.tar.gz";
    sha256 = "fd54931e2d2a5ea6dc304735dca67301c40fe11fa2f09684c241375254120118";
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
