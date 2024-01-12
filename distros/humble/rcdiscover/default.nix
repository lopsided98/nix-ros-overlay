
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-humble-rcdiscover";
  version = "1.1.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcdiscover-release/archive/release/humble/rcdiscover/1.1.6-1.tar.gz";
    name = "1.1.6-1.tar.gz";
    sha256 = "d2dbf7dd14da03a453e7d4fab55429a8fbe0f06f6da6b39ca54bfed5b2cb1842";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package contains tools for the discovery of Roboception devices via GigE Vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
