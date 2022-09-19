
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-humble-rcdiscover";
  version = "1.1.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcdiscover-release/archive/release/humble/rcdiscover/1.1.4-3.tar.gz";
    name = "1.1.4-3.tar.gz";
    sha256 = "3981ea0a06581bca5350a8f4011a1cbaf06b1a5d753f5d7331db7931dc022af1";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package contains tools for the discovery of Roboception devices via GigE Vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
