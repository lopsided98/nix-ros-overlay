
# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-virtualenv }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake-virtualenv";
  version = "0.0.5-r5";

  src = fetchurl {
    url = "https://github.com/esol-community/ament_virtualenv-release/archive/release/dashing/ament_cmake_virtualenv/0.0.5-5.tar.gz";
    name = "0.0.5-5.tar.gz";
    sha256 = "3de5000f59569b6e3770a576a2a7199e5a043b2a8091cec1a3e0b840470ce87c";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-virtualenv ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ];

  meta = {
    description = ''Bundle python requirements in a ament package via virtualenv.'';
    license = with lib.licenses; [ gpl1 ];
  };
}
