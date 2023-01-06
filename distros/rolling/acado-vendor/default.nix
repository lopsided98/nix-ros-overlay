
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto }:
buildRosPackage {
  pname = "ros-rolling-acado-vendor";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/acado_vendor-release/archive/release/rolling/acado_vendor/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "15243e297634178d1bf5ca1fcd2e38e2baa42741c18e9b1df6aea095350cd915";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''ament package for ACADO toolkit for MPC code generation'';
    license = with lib.licenses; [ asl20 ];
  };
}
