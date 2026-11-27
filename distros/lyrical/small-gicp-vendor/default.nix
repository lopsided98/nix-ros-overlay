
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package }:
buildRosPackage {
  pname = "ros-lyrical-small-gicp-vendor";
  version = "2.2.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/multisensor_calibration-release/archive/release/lyrical/small_gicp_vendor/2.2.1-1.tar.gz";
    name = "2.2.1-1.tar.gz";
    sha256 = "be0845b75cec3361eff2bb74263967a4301f0ee3c4e8d44e84bf9f82e1652ca1";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package ];

  meta = {
    description = "Vendor package for small_gicp. This is just a wrapper to provide ExternalProject build";
    license = with lib.licenses; [ mit bsdOriginal ];
  };
}
