
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-lint-cmake, ament-cmake-xmllint, ament-lint-auto }:
buildRosPackage {
  pname = "ros-rolling-acado-vendor";
  version = "1.0.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/acado_vendor-release/archive/release/rolling/acado_vendor/1.0.0-6.tar.gz";
    name = "1.0.0-6.tar.gz";
    sha256 = "8d2fd575773b648e9c177c2f9a43c626bee471d81f14508729273b866f99cac0";
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
