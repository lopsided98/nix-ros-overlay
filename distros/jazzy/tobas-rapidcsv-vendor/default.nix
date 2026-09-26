
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake }:
buildRosPackage {
  pname = "ros-jazzy-tobas-rapidcsv-vendor";
  version = "2.16.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_rapidcsv_vendor/2.16.4-1.tar.gz";
    name = "2.16.4-1.tar.gz";
    sha256 = "f298626a22bb8f86bab39e93187713821979f7d3f166fe819b407af4bae29656";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Vendor package for the header-only rapidcsv CSV parser";
    license = with lib.licenses; [ bsd3 ];
  };
}
