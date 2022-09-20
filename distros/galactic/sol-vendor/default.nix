
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ouxt-lint-common }:
buildRosPackage {
  pname = "ros-galactic-sol-vendor";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/OUXT-Polaris/sol_vendor-release/archive/release/galactic/sol_vendor/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "99769c78a3822a4f526d248b6c9dd58a2194b0d7649c31d854f6c60a738ea92c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ouxt-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''vendor package for the sol2 library'';
    license = with lib.licenses; [ asl20 mit ];
  };
}
