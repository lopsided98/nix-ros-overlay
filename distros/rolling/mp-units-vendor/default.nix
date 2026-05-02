
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, fmt, git, gsl }:
buildRosPackage {
  pname = "ros-rolling-mp-units-vendor";
  version = "2.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mp_units_vendor-release/archive/release/rolling/mp_units_vendor/2.5.0-3.tar.gz";
    name = "2.5.0-3.tar.gz";
    sha256 = "be50742dc1f571a38bae85ba7718c3ac279a927fbc1cc336d0b8918109069c52";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package git ];
  propagatedBuildInputs = [ fmt gsl ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package git ];

  meta = {
    description = "Vendor package for mp-units (quantities and units library for C++)";
    license = with lib.licenses; [ asl20 mit ];
  };
}
