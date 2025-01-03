
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, poco }:
buildRosPackage {
  pname = "ros-humble-libfranka";
  version = "0.13.6-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/libfranka-release/archive/release/humble/libfranka/0.13.6-1.tar.gz";
    name = "0.13.6-1.tar.gz";
    sha256 = "539cba239079883b2f284e5662e696f8a7cfa4a383e28258c60ea383221454cc";
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
