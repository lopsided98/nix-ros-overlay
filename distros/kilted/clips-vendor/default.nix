
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, unzip }:
buildRosPackage {
  pname = "ros-kilted-clips-vendor";
  version = "6.4.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_vendor-release/archive/release/kilted/clips_vendor/6.4.4-1.tar.gz";
    name = "6.4.4-1.tar.gz";
    sha256 = "e4b7d4f50a46de6e74b2d5953a0f265f452dc1a1f1cabf03a467e28efb370277";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ ament-cmake-vendor-package unzip ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Vendor package for the CLIPS rule based production system";
    license = with lib.licenses; [ "MIT-0" ];
  };
}
