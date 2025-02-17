
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, fmt, pinocchio, poco }:
buildRosPackage {
  pname = "ros-humble-libfranka";
  version = "0.15.0-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/libfranka-release/archive/release/humble/libfranka/0.15.0-1.tar.gz";
    name = "0.15.0-1.tar.gz";
    sha256 = "136ec8a29a3b5d66677c91bfd92ac3cfc274672eb352f02bb496d1d228f8139c";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen ];
  propagatedBuildInputs = [ fmt pinocchio poco ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "libfranka is a C++ library for Franka Robotics research robots";
    license = with lib.licenses; [ asl20 ];
  };
}
