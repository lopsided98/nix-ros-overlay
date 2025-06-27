
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto }:
buildRosPackage {
  pname = "ros-kilted-acado-vendor";
  version = "1.0.0-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/acado_vendor-release/archive/release/kilted/acado_vendor/1.0.0-7.tar.gz";
    name = "1.0.0-7.tar.gz";
    sha256 = "bec6b6968e1844f346345390ca23ba9a392e74205070e2e91e2cb36aaae813b3";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-xmllint ament-lint-auto ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "ament package for ACADO toolkit for MPC code generation";
    license = with lib.licenses; [ asl20 ];
  };
}
