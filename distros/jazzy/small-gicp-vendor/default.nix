
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package }:
buildRosPackage {
  pname = "ros-jazzy-small-gicp-vendor";
  version = "2.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/multisensor_calibration-release/archive/release/jazzy/small_gicp_vendor/2.0.2-1.tar.gz";
    name = "2.0.2-1.tar.gz";
    sha256 = "81d951bca577266a886a698593b261eebab624038c5f6ace8eb5cdbd5b13a7d5";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "Vendor package for small_gicp. This is just a wrapper to provide ExternalProject build";
    license = with lib.licenses; [ mit "BSD3" ];
  };
}
