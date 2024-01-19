
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto }:
buildRosPackage {
  pname = "ros-humble-acado-vendor";
  version = "1.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/acado_vendor-release/archive/release/humble/acado_vendor/1.0.0-4.tar.gz";
    name = "1.0.0-4.tar.gz";
    sha256 = "4c3bf139bfe3d5b3007d94b84624b7cc20d3e1ab4522a950bc6c88d86ee1711f";
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
