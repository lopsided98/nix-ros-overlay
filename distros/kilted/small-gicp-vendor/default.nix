
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package }:
buildRosPackage {
  pname = "ros-kilted-small-gicp-vendor";
  version = "2.0.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/multisensor_calibration-release/archive/release/kilted/small_gicp_vendor/2.0.4-1.tar.gz";
    name = "2.0.4-1.tar.gz";
    sha256 = "714ebfdb0c8f52308b164047ebeb10308dab4fb5071bbf6f09c2c397c66bc80c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "Vendor package for small_gicp. This is just a wrapper to provide ExternalProject build";
    license = with lib.licenses; [ mit bsdOriginal ];
  };
}
