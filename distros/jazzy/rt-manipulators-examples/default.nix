
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rt-manipulators-cpp }:
buildRosPackage {
  pname = "ros-jazzy-rt-manipulators-examples";
  version = "1.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rt_manipulators_cpp-release/archive/release/jazzy/rt_manipulators_examples/1.0.0-4.tar.gz";
    name = "1.0.0-4.tar.gz";
    sha256 = "357ba1058660bd351c6b7924b414d278e4369512eb3e040c513a4da35331e9c9";
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
