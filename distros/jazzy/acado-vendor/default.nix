
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto }:
buildRosPackage {
  pname = "ros-jazzy-acado-vendor";
  version = "1.0.0-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/acado_vendor-release/archive/release/jazzy/acado_vendor/1.0.0-7.tar.gz";
    name = "1.0.0-7.tar.gz";
    sha256 = "70d7ffe82d3000bd09d05ee50395665fb436e9f612ff0220e637ef49d6297612";
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
