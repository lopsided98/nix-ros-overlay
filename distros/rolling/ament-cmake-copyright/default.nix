
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-copyright }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-copyright";
  version = "0.16.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/rolling/ament_cmake_copyright/0.16.3-2.tar.gz";
    name = "0.16.3-2.tar.gz";
    sha256 = "b10b8d7ca536a0f7478aeedb02abbaae2469e1be9c7df2a178fd930c4e03d213";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-copyright ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-copyright ];

  meta = {
    description = ''The CMake API for ament_copyright to check every source file contains copyright reference.'';
    license = with lib.licenses; [ asl20 ];
  };
}
