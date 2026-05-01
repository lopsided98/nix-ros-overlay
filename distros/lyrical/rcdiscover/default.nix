
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-lyrical-rcdiscover";
  version = "1.1.7-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcdiscover-release/archive/release/lyrical/rcdiscover/1.1.7-3.tar.gz";
    name = "1.1.7-3.tar.gz";
    sha256 = "8d4e77e9f7c1e90e9cbeaf62d1156aa8d197d5b06cd1aa9b2657249bd8e5348e";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "This package contains tools for the discovery of Roboception devices via GigE Vision.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
