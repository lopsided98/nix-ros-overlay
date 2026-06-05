
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-jazzy-rcdiscover";
  version = "2.1.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcdiscover-release/archive/release/jazzy/rcdiscover/2.1.2-1.tar.gz";
    name = "2.1.2-1.tar.gz";
    sha256 = "63b677a39da9fb2f95bfe0df2a1c5366e0f98e99970d3f8181a2df4b750da858";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "This package contains tools for the discovery of Roboception devices via GigE Vision.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
