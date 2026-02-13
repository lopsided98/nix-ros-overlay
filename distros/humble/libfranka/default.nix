
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, fmt, pinocchio, poco, tinyxml-2 }:
buildRosPackage {
  pname = "ros-humble-libfranka";
  version = "0.20.4-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/libfranka-release/archive/release/humble/libfranka/0.20.4-1.tar.gz";
    name = "0.20.4-1.tar.gz";
    sha256 = "5612faa6708c1414f317d28ea3d892a1d4d8dee0d6a21d3817c489beeb4f5601";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen ];
  propagatedBuildInputs = [ fmt pinocchio poco tinyxml-2 ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "libfranka is a C++ library for Franka Robotics research robots";
    license = with lib.licenses; [ asl20 ];
  };
}
