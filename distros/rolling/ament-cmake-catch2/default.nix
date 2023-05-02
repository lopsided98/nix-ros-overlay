
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-catch2";
  version = "1.2.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_catch2-release/archive/release/rolling/ament_cmake_catch2/1.2.0-4.tar.gz";
    name = "1.2.0-4.tar.gz";
    sha256 = "3d847696419a567fab477b3898967dfa1961f61f2c9de476794424679f1be43c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-core ];
  propagatedBuildInputs = [ ament-cmake-test ];
  nativeBuildInputs = [ ament-cmake-core ament-cmake-test ];

  meta = {
    description = ''Allows integrating catch2 tests in the ament buildsystem with CMake'';
    license = with lib.licenses; [ asl20 ];
  };
}
