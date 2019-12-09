
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-lint-cmake, ament-virtualenv, ament-cmake-test, ament-cmake-core, ament-cmake-copyright }:
buildRosPackage {
  pname = "ros-crystal-ament-cmake-virtualenv";
  version = "0.0.3-r2";

  src = fetchurl {
    url = "https://github.com/esol-community/ament_virtualenv-release/archive/release/crystal/ament_cmake_virtualenv/0.0.3-2.tar.gz";
    name = "0.0.3-2.tar.gz";
    sha256 = "a0ad34a6300beadadeca08608698f915f0795e64ff162d73a3aeecc8e4dba8dc";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-copyright ];
  nativeBuildInputs = [ ament-cmake-core ament-virtualenv ament-cmake-test ];

  meta = {
    description = ''Bundle python requirements in a ament package via virtualenv.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
