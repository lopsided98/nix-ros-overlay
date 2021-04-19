
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common }:
buildRosPackage {
  pname = "ros-foxy-osqp-vendor";
  version = "0.0.3-r2";

  src = fetchurl {
    url = "https://github.com/tier4/osqp_vendor-release/archive/release/foxy/osqp_vendor/0.0.3-2.tar.gz";
    name = "0.0.3-2.tar.gz";
    sha256 = "4263861260987867d44a7ed7925220a96a38247a355045f567cd721378d49950";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Wrapper around osqp that ships with a CMake module'';
    license = with lib.licenses; [ asl20 ];
  };
}
