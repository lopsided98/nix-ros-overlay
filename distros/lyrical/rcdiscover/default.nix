
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-lyrical-rcdiscover";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcdiscover-release/archive/release/lyrical/rcdiscover/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "d2cc0fcced975272f84eae1270c1231b52ca08dc9ee6221cd619bc0f1c1c10bb";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "This package contains tools for the discovery of Roboception devices via GigE Vision.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
