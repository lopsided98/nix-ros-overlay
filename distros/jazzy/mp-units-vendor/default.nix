
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, git, gsl }:
buildRosPackage {
  pname = "ros-jazzy-mp-units-vendor";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mp_units_vendor-release/archive/release/jazzy/mp_units_vendor/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "e7cdf547e108a72b87e7ebd4e8691266c2a4e86cdb57a3f5af6799968f884611";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ament-cmake-vendor-package git ];
  propagatedBuildInputs = [ gsl ];
  nativeBuildInputs = [ ament-cmake ament-cmake-vendor-package git ];

  meta = {
    description = "Vendor package for mp-units (quantities and units library for C++)";
    license = with lib.licenses; [ asl20 mit ];
  };
}
