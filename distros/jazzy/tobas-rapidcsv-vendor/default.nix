
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-rapidcsv-vendor";
  version = "2.16.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_rapidcsv_vendor/2.16.8-1.tar.gz";
    name = "2.16.8-1.tar.gz";
    sha256 = "21897b4dde8b8126d6dd1d037d67fcd73c2d899bd777a8fdd784dda548e85164";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Vendor package for the header-only rapidcsv CSV parser";
    license = with lib.licenses; [ bsd3 ];
  };
}
