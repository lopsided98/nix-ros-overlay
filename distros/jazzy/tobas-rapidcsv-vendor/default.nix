
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-rapidcsv-vendor";
  version = "2.16.5-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_rapidcsv_vendor/2.16.5-1.tar.gz";
    name = "2.16.5-1.tar.gz";
    sha256 = "123b4e5475a75ca9b3a7444148fbff852010bf61a14beefba669ffec70f56f78";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Vendor package for the header-only rapidcsv CSV parser";
    license = with lib.licenses; [ bsd3 ];
  };
}
