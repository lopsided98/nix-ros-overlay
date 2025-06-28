
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-kilted-rcdiscover";
  version = "1.1.7-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcdiscover-release/archive/release/kilted/rcdiscover/1.1.7-2.tar.gz";
    name = "1.1.7-2.tar.gz";
    sha256 = "4455966809e35d5df3b8669e3c9f4a2fce5e30bfd36c8b107fb9972d8b4ee7b4";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "This package contains tools for the discovery of Roboception devices via GigE Vision.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
