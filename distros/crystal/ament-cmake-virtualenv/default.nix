
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-virtualenv }:
buildRosPackage {
  pname = "ros-crystal-ament-cmake-virtualenv";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/esol-community/ament_virtualenv-release/archive/release/crystal/ament_cmake_virtualenv/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "295548aaaf0f99386f73aec401c1a70322aa6c46e509aae59b0f9efba9c2f569";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-virtualenv ];

  meta = {
    description = ''Bundle python requirements in a ament package via virtualenv.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
