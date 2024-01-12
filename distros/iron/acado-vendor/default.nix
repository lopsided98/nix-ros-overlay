
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto }:
buildRosPackage {
  pname = "ros-iron-acado-vendor";
  version = "1.0.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/acado_vendor-release/archive/release/iron/acado_vendor/1.0.0-6.tar.gz";
    name = "1.0.0-6.tar.gz";
    sha256 = "02b93ec40148f582b298784dc4236707ca2247f3d03b07e22c0222ab4e9efce4";
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
