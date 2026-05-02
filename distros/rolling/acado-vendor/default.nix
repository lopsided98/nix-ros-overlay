
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto }:
buildRosPackage {
  pname = "ros-rolling-acado-vendor";
  version = "1.0.0-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/acado_vendor-release/archive/release/rolling/acado_vendor/1.0.0-7.tar.gz";
    name = "1.0.0-7.tar.gz";
    sha256 = "3ca0342e7a7449da3f66d915d7e39a4929a26340029c27f6cd7e79d5edb6876a";
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
