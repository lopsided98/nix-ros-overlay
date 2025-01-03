
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-lint-cmake, ament-cmake-test, ament-copyright }:
buildRosPackage {
  pname = "ros-humble-ament-cmake-copyright";
  version = "0.12.11-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_lint-release/archive/release/humble/ament_cmake_copyright/0.12.11-1.tar.gz";
    name = "0.12.11-1.tar.gz";
    sha256 = "05ef090ecb26419020fc219a078191d42a98f74c79cb4515fa3ed4591e6e70ca";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  checkInputs = [ ament-cmake-lint-cmake ];
  propagatedBuildInputs = [ ament-cmake-test ament-copyright ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ament-copyright ];

  meta = {
    description = "The CMake API for ament_copyright to check every source file contains copyright reference.";
    license = with lib.licenses; [ asl20 ];
  };
}
