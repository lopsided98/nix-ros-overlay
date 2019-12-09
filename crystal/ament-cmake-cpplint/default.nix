
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-lint-cmake, ament-cmake-test, ament-cmake-core, ament-cpplint, ament-cmake-copyright }:
buildRosPackage {
  pname = "ros-crystal-ament-cmake-cpplint";
  version = "0.6.4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/crystal/ament_cmake_cpplint/0.6.4-0.tar.gz";
    name = "0.6.4-0.tar.gz";
    sha256 = "e93ba94c0aade4db5b180e15e3bc5cb38692009ed1e722f88ba229a5a90613b2";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-lint-cmake ament-cmake-copyright ];
  propagatedBuildInputs = [ ament-cmake-test ament-cpplint ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ];

  meta = {
    description = ''The CMake API for ament_cpplint to lint C / C++ code using cpplint.'';
    license = with lib.licenses; [ asl20 ];
  };
}
