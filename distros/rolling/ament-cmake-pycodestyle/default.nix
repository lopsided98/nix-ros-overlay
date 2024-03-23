
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-pycodestyle }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-pycodestyle";
  version = "0.16.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cmake_pycodestyle/0.16.3-2.tar.gz";
    name = "0.16.3-2.tar.gz";
    sha256 = "fb5b9340e3bdbb490dbc822ad4f8affbf984cfc5d931e50b1c87159fe640e839";
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
