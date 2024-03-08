
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dynamixel-sdk, eigen, eigen3-cmake-module, yaml-cpp, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-rt-manipulators-cpp";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rt_manipulators_cpp-release/archive/release/rolling/rt_manipulators_cpp/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "4d3423b21a8aa6dfbea0070ce03f4d7b0f1263b50327df16e9804c685496d399";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ dynamixel-sdk eigen eigen3-cmake-module yaml-cpp yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RT Manipulators C++ Library'';
    license = with lib.licenses; [ asl20 ];
  };
}
