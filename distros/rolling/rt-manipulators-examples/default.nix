
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rt-manipulators-cpp }:
buildRosPackage {
  pname = "ros-rolling-rt-manipulators-examples";
  version = "1.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rt_manipulators_cpp-release/archive/release/rolling/rt_manipulators_examples/1.0.0-3.tar.gz";
    name = "1.0.0-3.tar.gz";
    sha256 = "5dce32608021f85b9c6f68fa0b034b39b995b714f7230354a70c0564df7c8d34";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rt-manipulators-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Examples for RT Manipulators C++ Library";
    license = with lib.licenses; [ asl20 ];
  };
}
