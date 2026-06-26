
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, unzip }:
buildRosPackage {
  pname = "ros-lyrical-clips-vendor";
  version = "6.4.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_vendor-release/archive/release/lyrical/clips_vendor/6.4.4-1.tar.gz";
    name = "6.4.4-1.tar.gz";
    sha256 = "1d2791619f8ba1f1824158d5c30164df5932b7d683603dd0e0dadd6826870192";
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
