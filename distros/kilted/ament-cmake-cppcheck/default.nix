
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cppcheck }:
buildRosPackage {
  pname = "ros-kilted-ament-cmake-cppcheck";
  version = "0.19.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/kilted/ament_cmake_cppcheck/0.19.2-2.tar.gz";
    name = "0.19.2-2.tar.gz";
    sha256 = "1335c0d16a325a1493e4e352fdf1bbfb1c456b789162013777e91c94686682a2";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-cmake-copyright ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-core ament-cmake-test ament-cppcheck ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-cppcheck ];

  meta = {
    description = "The CMake API for ament_cppcheck to perform static code analysis on C/C++
    code using Cppcheck.";
    license = with lib.licenses; [ asl20 ];
  };
}
