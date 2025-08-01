
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, dynamixel-sdk, eigen, eigen3-cmake-module, yaml-cpp, yaml-cpp-vendor }:
buildRosPackage {
  pname = "ros-kilted-rt-manipulators-cpp";
  version = "1.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rt_manipulators_cpp-release/archive/release/kilted/rt_manipulators_cpp/1.0.0-4.tar.gz";
    name = "1.0.0-4.tar.gz";
    sha256 = "32b3d7a92551e213fbaf820005011b1be50a572cea929cac06e4fbb2e1397757";
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
