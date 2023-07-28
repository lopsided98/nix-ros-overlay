
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-copyright, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-cpplint }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-cpplint";
  version = "0.12.7-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_cmake_cpplint/0.12.7-2.tar.gz";
    name = "0.12.7-2.tar.gz";
    sha256 = "130cc2b9b5dea425e54a9fe478c3bc61a735ace856295a97a8e43480b2e467b6";
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
