
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test, ament-cpplint, ament-cmake-lint-cmake, ament-cmake-copyright }:
buildRosPackage {
  pname = "ros-dashing-ament-cmake-cpplint";
  version = "0.7.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/dashing/ament_cmake_cpplint/0.7.11-1.tar.gz";
    name = "0.7.11-1.tar.gz";
    sha256 = "98e0c2ef204595971c016b477b0aad15cd2d94c13aba012ff6a59efa574e84db";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-cpplint ];
  nativeBuildInputs = [ ament-cmake-test ament-cmake-core ];

  meta = {
    description = ''The CMake API for ament_cpplint to lint C / C++ code using cpplint.'';
    license = with lib.licenses; [ asl20 ];
  };
}
