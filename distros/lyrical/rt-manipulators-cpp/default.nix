
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dynamixel-sdk, eigen, eigen3-cmake-module, yaml-cpp, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-lyrical-rt-manipulators-cpp";
  version = "1.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rt_manipulators_cpp-release/archive/release/lyrical/rt_manipulators_cpp/1.0.0-5.tar.gz";
    name = "1.0.0-5.tar.gz";
    sha256 = "3663a816f7786a5dc9c7afc0279297a7c6f73f318f1a65ef37244fe844668ccc";
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
