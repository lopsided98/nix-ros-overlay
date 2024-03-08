
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-rcdiscover";
  version = "1.1.6-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcdiscover-release/archive/release/rolling/rcdiscover/1.1.6-3.tar.gz";
    name = "1.1.6-3.tar.gz";
    sha256 = "7c83a4b917ed25a05ad968afc28bdb5fa80c5aa58e73eb59e24c7089d42dd2f0";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = ''This package contains tools for the discovery of Roboception devices via GigE Vision.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
