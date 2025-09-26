
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, git }:
buildRosPackage {
  pname = "ros-jazzy-ads-vendor";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/b-robotized/ads_vendor-release/archive/release/jazzy/ads_vendor/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "3d5d9c84777a0f52c87eb5e9d01550a0991e772bdc8b04922ac445f48408deb2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = "Package vendoring Beckhoff/ADS library";
    license = with lib.licenses; [ asl20 ];
  };
}
