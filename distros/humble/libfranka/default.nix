
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, poco }:
buildRosPackage {
  pname = "ros-humble-libfranka";
  version = "0.14.2-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/libfranka-release/archive/release/humble/libfranka/0.14.2-1.tar.gz";
    name = "0.14.2-1.tar.gz";
    sha256 = "93cf1c5811e4cd15e07e40b3f6551c3a16d5b6c43a1a4106f0eb553d94daa4ff";
  };

  buildType = "cmake";
  buildInputs = [ cmake eigen ];
  propagatedBuildInputs = [ poco ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "libfranka is a C++ library for Franka Robotics research robots";
    license = with lib.licenses; [ asl20 ];
  };
}
