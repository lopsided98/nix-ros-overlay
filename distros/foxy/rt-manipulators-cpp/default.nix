
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dynamixel-sdk, eigen, eigen3-cmake-module, libyamlcpp, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-foxy-rt-manipulators-cpp";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/rt-net-gbp/rt_manipulators_cpp-release/archive/release/foxy/rt_manipulators_cpp/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "e10b6a350ba61762f678f070614f15e70d1141684dffb02a3fadd00c7da519aa";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ dynamixel-sdk eigen eigen3-cmake-module libyamlcpp yaml-cpp-vendor ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''RT Manipulators C++ Library'';
    license = with lib.licenses; [ asl20 ];
  };
}
