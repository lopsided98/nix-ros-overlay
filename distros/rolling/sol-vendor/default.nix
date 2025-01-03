
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, git, ouxt-lint-common }:
buildRosPackage {
  pname = "ros-rolling-sol-vendor";
  version = "0.0.3-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/sol_vendor-release/archive/release/rolling/sol_vendor/0.0.3-4.tar.gz";
    name = "0.0.3-4.tar.gz";
    sha256 = "f2e7c40869445bd0aa118d8628d4f9dc794d9aea4549f9c03e9b04957fdfdc4a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake git ];
  checkInputs = [ ament-lint-auto ouxt-lint-common ];
  nativeBuildInputs = [ ament-cmake git ];

  meta = {
    description = "vendor package for the sol2 library";
    license = with lib.licenses; [ asl20 mit ];
  };
}
