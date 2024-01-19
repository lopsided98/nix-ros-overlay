
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto }:
buildRosPackage {
  pname = "ros-rolling-acado-vendor";
  version = "1.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/acado_vendor-release/archive/release/rolling/acado_vendor/1.0.0-5.tar.gz";
    name = "1.0.0-5.tar.gz";
    sha256 = "aa7818ef443458fc2f67f4bc5db847c7623243319584442bc80f4e4508273c5e";
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
