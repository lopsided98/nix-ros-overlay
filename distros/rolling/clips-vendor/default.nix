
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, unzip }:
buildRosPackage {
  pname = "ros-rolling-clips-vendor";
  version = "6.4.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_vendor-release/archive/release/rolling/clips_vendor/6.4.3-2.tar.gz";
    name = "6.4.3-2.tar.gz";
    sha256 = "9b937a8c0f5e482d1fdf188815badf23a634755328452fb946c4de8fd60fd53d";
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
