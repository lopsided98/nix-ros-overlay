
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto }:
buildRosPackage {
  pname = "ros-lyrical-acado-vendor";
  version = "1.0.0-r8";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/acado_vendor-release/archive/release/lyrical/acado_vendor/1.0.0-8.tar.gz";
    name = "1.0.0-8.tar.gz";
    sha256 = "d645694ca123fbdb527063837eda5c04d29264f4404d5351930da21b65b9248f";
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
