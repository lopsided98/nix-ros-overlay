
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-iron-rcdiscover";
  version = "1.1.6-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcdiscover-release/archive/release/iron/rcdiscover/1.1.6-3.tar.gz";
    name = "1.1.6-3.tar.gz";
    sha256 = "65b71cb2d27c19197e991db8b4b5cc7ac9715a07d15ed7f3b0d31cfadb6af53d";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package contains tools for the discovery of Roboception devices via GigE Vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
