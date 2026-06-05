
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-rcdiscover";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcdiscover-release/archive/release/rolling/rcdiscover/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "20357c79c0de956852382fb9fefba97812591dae091983280788fd444df468b5";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "This package contains tools for the discovery of Roboception devices via GigE Vision.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
