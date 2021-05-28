
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-galactic-osqp-vendor";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/tier4/osqp_vendor-release/archive/release/galactic/osqp_vendor/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "de39e5484b5e279152fcd20cb5bd3b00202a77f56a276025709adb0a14d5c5e3";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around osqp that ships with a CMake module'';
    license = with lib.licenses; [ asl20 ];
  };
}
