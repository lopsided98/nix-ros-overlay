
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, tobas-math }:
buildRosPackage {
  pname = "ros-jazzy-tobas-algorithm";
  version = "2.16.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tobas-release/archive/release/jazzy/tobas_algorithm/2.16.6-1.tar.gz";
    name = "2.16.6-1.tar.gz";
    sha256 = "e5d62b266a94678fdb293b2591d3e3277c18e8f0813523ea2e960e438664195d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ tobas-math ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "General-purpose C++ algorithms for binary data, CRC calculation, stable summation, and range handling.";
    license = with lib.licenses; [ gpl3Plus ];
  };
}
