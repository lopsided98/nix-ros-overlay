
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dynamixel-sdk, eigen, eigen3-cmake-module, libyamlcpp, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-rolling-rt-manipulators-cpp";
  version = "1.0.0-r1";

  src = fetchurl {
    url = "https://github.com/rt-net-gbp/rt_manipulators_cpp-release/archive/release/rolling/rt_manipulators_cpp/1.0.0-1.tar.gz";
    name = "1.0.0-1.tar.gz";
    sha256 = "b17f62e4518f6156f8e021bc698076b934bc1460d86e1902e14fc69d07b854fa";
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
