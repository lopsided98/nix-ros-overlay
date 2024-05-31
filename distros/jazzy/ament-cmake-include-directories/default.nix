
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-core }:
buildRosPackage {
  pname = "ros-jazzy-ament-cmake-include-directories";
  version = "2.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ament_cmake-release/archive/release/jazzy/ament_cmake_include_directories/2.5.0-2.tar.gz";
    name = "2.5.0-2.tar.gz";
    sha256 = "9269d706e54fcc786686584fd1f4388db53315c23f8eae45caae09a308504abd";
  };

  buildType = "ament_cmake";
  propagatedBuildInputs = [ ament-cmake-core ];
  nativeBuildInputs = [ ament-cmake-core ];

  meta = {
    description = "The functionality to order include directories according to a chain of prefixes in the ament buildsystem in CMake.";
    license = with lib.licenses; [ asl20 ];
  };
}
