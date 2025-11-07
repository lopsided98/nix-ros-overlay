
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package }:
buildRosPackage {
  pname = "ros-kilted-small-gicp-vendor";
  version = "2.0.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/multisensor_calibration-release/archive/release/kilted/small_gicp_vendor/2.0.4-2.tar.gz";
    name = "2.0.4-2.tar.gz";
    sha256 = "01aca37b930497de775d17f0e7cc4e2c9b021d354210c0d63566e80fc111358d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "Vendor package for small_gicp. This is just a wrapper to provide ExternalProject build";
    license = with lib.licenses; [ mit bsdOriginal ];
  };
}
