
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, unzip }:
buildRosPackage {
  pname = "ros-jazzy-clips-vendor";
  version = "6.4.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/clips_vendor-release/archive/release/jazzy/clips_vendor/6.4.4-1.tar.gz";
    name = "6.4.4-1.tar.gz";
    sha256 = "a087beeed28751e68439e6196b2bcf34ccc554113585b277b37b134c9759aa57";
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
