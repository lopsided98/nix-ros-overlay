
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, fmt, git, gsl }:
buildRosPackage {
  pname = "ros-rolling-mp-units-vendor";
  version = "2.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mp_units_vendor-release/archive/release/rolling/mp_units_vendor/2.5.0-2.tar.gz";
    name = "2.5.0-2.tar.gz";
    sha256 = "45549f14cbf349235afcce1694a74fae3787c52d8b735862318786118fcbe202";
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
