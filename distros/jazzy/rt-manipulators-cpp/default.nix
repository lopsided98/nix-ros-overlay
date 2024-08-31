
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dynamixel-sdk, eigen, eigen3-cmake-module, yaml-cpp, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-jazzy-rt-manipulators-cpp";
  version = "1.1.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rt_manipulators_cpp-release/archive/release/jazzy/rt_manipulators_cpp/1.1.0-1.tar.gz";
    name = "1.1.0-1.tar.gz";
    sha256 = "a7155bd214ac3526192757add91fdcfc47eff28ab0b5fb2c0b67f4e54b9c816a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ dynamixel-sdk eigen eigen3-cmake-module yaml-cpp yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "RT Manipulators C++ Library";
    license = with lib.licenses; [ asl20 ];
  };
}
