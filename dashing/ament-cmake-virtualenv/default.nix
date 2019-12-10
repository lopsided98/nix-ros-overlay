
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-virtualenv }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake-virtualenv";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/esol-community/ament_virtualenv-release/archive/release/dashing/ament_cmake_virtualenv/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "a3a196f666f855847864da400ccadf73434aaaf514f788b7e75174e6bdeb9815";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-virtualenv ];

  meta = {
    description = ''Bundle python requirements in a ament package via virtualenv.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
