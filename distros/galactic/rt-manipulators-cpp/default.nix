
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dynamixel-sdk, eigen, eigen3-cmake-module, libyamlcpp, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-galactic-rt-manipulators-cpp";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/rt-net-gbp/rt_manipulators_cpp-release/archive/release/galactic/rt_manipulators_cpp/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "e5a71a06f9591ef8365c02999c0efaf4e4f2c954c0c669959b56b5bb4804e681";
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
