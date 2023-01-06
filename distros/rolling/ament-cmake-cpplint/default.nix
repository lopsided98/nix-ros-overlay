
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cpplint }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-cpplint";
  version = "0.13.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cmake_cpplint/0.13.2-1.tar.gz";
    name = "0.13.2-1.tar.gz";
    sha256 = "8ededf4ab25ecb8a8e27e7d033963c8bd073e1cb1823f0911c1692c7d35b24eb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-cpplint ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cpplint ];

  meta = {
    description = ''The CMake API for ament_cpplint to lint C / C++ code using cpplint.'';
    license = with lib.licenses; [ asl20 ];
  };
}
