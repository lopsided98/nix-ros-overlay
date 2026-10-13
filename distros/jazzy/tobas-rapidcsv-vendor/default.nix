
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-rapidcsv-vendor";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_rapidcsv_vendor/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "da12b0f3988a853c4aebc277316b41b821ef0f3bb9c87771e1f9ffa2e602d84e";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Vendor package for the header-only rapidcsv CSV parser";
    license = with lib.licenses; [ bsd3 ];
  };
}
