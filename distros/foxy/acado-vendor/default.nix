
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto }:
buildRosPackage {
  pname = "ros-foxy-acado-vendor";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://gitlab.com/autowarefoundation/autoware.auto/acado_vendor-release/-/archive/release/foxy/acado_vendor/1.0.0-2/archive.tar.gz";
    name = "archive.tar.gz";
    sha256 = "58962a744baeaa154e3c11b16ce3daface6b67600d813d458c8150bf7e01b06e";
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
