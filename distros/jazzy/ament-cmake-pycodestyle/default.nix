
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-pycodestyle }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-pycodestyle";
  version = "0.17.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/jazzy/ament_cmake_pycodestyle/0.17.0-2.tar.gz";
    name = "0.17.0-2.tar.gz";
    sha256 = "0e02509f2e196f0de116e65441e57a397e686b8beb3676aac806f673740337ff";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-pycodestyle ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-pycodestyle ];

  meta = {
    description = "The CMake API for ament_pycodestyle to check code against the style conventions in
    PEP 8.";
    license = with lib.licenses; [ asl20 ];
  };
}
