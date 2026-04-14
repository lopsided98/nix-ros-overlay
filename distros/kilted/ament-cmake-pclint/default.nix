
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-pclint }:
buildRosPackage {
  pname = "ros-kilted-ament-cmake-pclint";
  version = "0.19.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/kilted/ament_cmake_pclint/0.19.3-2.tar.gz";
    name = "0.19.3-2.tar.gz";
    sha256 = "4b407c46892a616002b4e5493bffe5aea3f7c1bb83ef4ac7be3cef1f43611246";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-pclint ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-pclint ];

  meta = {
    description = "The CMake API for ament_pclint to perform static code analysis on C/C++
    code using PC-lint.";
    license = with lib.licenses; [ asl20 ];
  };
}
