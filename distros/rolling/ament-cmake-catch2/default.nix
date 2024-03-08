
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core, ament-cmake-test }:
buildRosPackage {
  pname = "ros-rolling-ament-cmake-catch2";
  version = "1.4.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake_catch2-release/archive/release/rolling/ament_cmake_catch2/1.4.0-2.tar.gz";
    name = "1.4.0-2.tar.gz";
    sha256 = "15b9f7421daf3ba4829a5d92dce7f2c5ffa134e54f68b0378638cee75433b8c0";
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
