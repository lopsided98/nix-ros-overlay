
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-rapidcsv-vendor";
  version = "2.16.9-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_rapidcsv_vendor/2.16.9-1.tar.gz";
    name = "2.16.9-1.tar.gz";
    sha256 = "e6b91cbc12e59860426d7aa42edec018deadf2684fabfc6e3d769309ac212248";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Vendor package for the header-only rapidcsv CSV parser";
    license = with lib.licenses; [ bsd3 ];
  };
}
