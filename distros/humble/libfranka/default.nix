
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake, eigen, fmt, pinocchio, poco, tinyxml-2 }:
buildRosPackage {
  pname = "ros-humble-libfranka";
  version = "0.20.3-r1";

  src = fetchurl {
    url = "https://github.com/frankaemika/libfranka-release/archive/release/humble/libfranka/0.20.3-1.tar.gz";
    name = "0.20.3-1.tar.gz";
    sha256 = "9eee4394948b3e2ea1b87d6efb2650ee4e0345ad4b013a533102b7f98dd33d30";
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
