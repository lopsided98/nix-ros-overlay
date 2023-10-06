
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-flake8 }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-flake8";
  version = "0.16.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cmake_flake8/0.16.0-1.tar.gz";
    name = "0.16.0-1.tar.gz";
    sha256 = "bfc00840fab1c3b7d1c9ed45588808fd87a4bd8d96ba59ae76e553e479dbde6a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-flake8 ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-flake8 ];

  meta = {
    description = ''The CMake API for ament_flake8 to check code syntax and style conventions
    with flake8.'';
    license = with lib.licenses; [ asl20 ];
  };
}
