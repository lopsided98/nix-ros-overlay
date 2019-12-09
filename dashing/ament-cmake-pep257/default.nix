
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-lint-cmake, ament-cmake-test, ament-pep257, ament-cmake-core, ament-cmake-copyright }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake-pep257";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_cmake_pep257/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "cf24606d5677b5370b8125d4568be13d4ae8e07b4af6ba2aa6724563124b046c";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-copyright ];
  propagatedBuildInputs = [ ament-cmake-test ament-pep257 ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ];

  meta = {
    description = ''The CMake API for ament_pep257 to check code against the style conventions in
    PEP 257.'';
    license = with lib.licenses; [ asl20 ];
  };
}
