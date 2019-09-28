
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-flake8, ament-cmake-core, ament-cmake-test, ament-cmake-lint-cmake, ament-cmake-copyright }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake-flake8";
  version = "0.7.10-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_cmake_flake8/0.7.10-1.tar.gz";
    name = "0.7.10-1.tar.gz";
    sha256 = "a5ece0b51b5d221cc5a7e8d20186e8aabc33e1027f00f4cf6933672782593a52";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-flake8 ];
  nativeBuildInputs = [ ament-cmake-test ament-cmake-core ];

  meta = {
    description = ''The CMake API for ament_flake8 to check code syntax and style conventions
    with flake8.'';
    license = with lib.licenses; [ asl20 ];
  };
}
