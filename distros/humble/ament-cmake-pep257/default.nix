
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-pep257 }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-pep257";
  version = "0.12.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_cmake_pep257/0.12.8-1.tar.gz";
    name = "0.12.8-1.tar.gz";
    sha256 = "23a3320cc9c0c33c547e7d2986f454eb316351f7268a5290ca84d9c9e18ec085";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-pep257 ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-pep257 ];

  meta = {
    description = ''The CMake API for ament_pep257 to check code against the docstring style conventions in
    PEP 257.'';
    license = with lib.licenses; [ asl20 ];
  };
}
