
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-vendor-package, fmt, git, gsl }:
buildRosPackage {
  pname = "ros-lyrical-mp-units-vendor";
  version = "2.5.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/mp_units_vendor-release/archive/release/lyrical/mp_units_vendor/2.5.0-4.tar.gz";
    name = "2.5.0-4.tar.gz";
    sha256 = "a8300c407e265779dd90695602eaeaee2d7f7bc9472496098eac0d1096dd503b";
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
