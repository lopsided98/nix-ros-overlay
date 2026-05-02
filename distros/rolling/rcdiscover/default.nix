
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, cmake }:
buildRosPackage {
  pname = "ros-rolling-rcdiscover";
  version = "1.1.7-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rcdiscover-release/archive/release/rolling/rcdiscover/1.1.7-2.tar.gz";
    name = "1.1.7-2.tar.gz";
    sha256 = "fe9b69308135b8ea6b6a79665ae76af308e60038a8c36cf3c997a7fed78dcfc8";
  };

  buildType = "cmake";
  buildInputs = [ cmake ];
  nativeBuildInputs = [ cmake ];

  meta = {
    description = "This package contains tools for the discovery of Roboception devices via GigE Vision.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
