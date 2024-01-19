
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, protobuf }:
buildRosPackage {
  pname = "ros-humble-ecal";
  version = "5.12.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ecal-release/archive/release/humble/ecal/5.12.0-3.tar.gz";
    name = "5.12.0-3.tar.gz";
    sha256 = "7ae3184c46ccc9fb5ba7eeefd5a279a6dda1e7a7db8d555c9d1d43c7befa6d52";
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
