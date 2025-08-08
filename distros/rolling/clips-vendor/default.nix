
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, unzip }:
buildRosPackage {
  pname = "ros-rolling-clips-vendor";
  version = "6.4.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_vendor-release/archive/release/rolling/clips_vendor/6.4.3-1.tar.gz";
    name = "6.4.3-1.tar.gz";
    sha256 = "fd59f06a5f387adaebb1b99eb4d181cf70bcf024d8e1916f1429bd055f893f9c";
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
