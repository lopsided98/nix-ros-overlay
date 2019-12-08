
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-virtualenv, ament-cmake-core, ament-cmake-test, ament-cmake-lint-cmake, ament-cmake-copyright }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake-virtualenv";
  version = "0.0.3-r1";

  src = fetchurl {
    url = "https://github.com/esol-community/ament_virtualenv-release/archive/release/dashing/ament_cmake_virtualenv/0.0.3-1.tar.gz";
    name = "0.0.3-1.tar.gz";
    sha256 = "3b86f3042a1ee4a512807eca05b2f08e2a814756b1cf893be0377f3fd83cdd8f";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  nativeBuildInputs = [ ament-cmake-test ament-cmake-core ament-virtualenv ];

  meta = {
    description = ''Bundle python requirements in a ament package via virtualenv.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
