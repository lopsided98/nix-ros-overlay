
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package }:
buildRosPackage {
  pname = "ros-jazzy-small-gicp-vendor";
  version = "2.0.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/multisensor_calibration-release/archive/release/jazzy/small_gicp_vendor/2.0.3-1.tar.gz";
    name = "2.0.3-1.tar.gz";
    sha256 = "6ff742c649f1958b83f1a8635b87001e6040fb22dc737d9c17cd7f17624223ca";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "Vendor package for small_gicp. This is just a wrapper to provide ExternalProject build";
    license = with lib.licenses; [ mit bsdOriginal ];
  };
}
