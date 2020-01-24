
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-virtualenv }:
buildRosPackage {
  pname = "ros-eloquent-ament-cmake-virtualenv";
  version = "0.0.5-r6";

  src = fetchurl {
    url = "https://github.com/esol-community/ament_virtualenv-release/archive/release/eloquent/ament_cmake_virtualenv/0.0.5-6.tar.gz";
    name = "0.0.5-6.tar.gz";
    sha256 = "4530c795d293bc036ae3af1d11dbe7c59e7a602106bbe1fec5ba3f414c8b832e";
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
