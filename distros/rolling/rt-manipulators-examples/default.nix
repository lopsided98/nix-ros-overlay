
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rt-manipulators-cpp }:
buildRosPackage {
  pname = "ros-rolling-rt-manipulators-examples";
  version = "1.0.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rt_manipulators_cpp-release/archive/release/rolling/rt_manipulators_examples/1.0.0-2.tar.gz";
    name = "1.0.0-2.tar.gz";
    sha256 = "a2608caab8fc88275dacbce9b96bb85f053e8ab8282da088f7f47bb7144278ee";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rclcpp rt-manipulators-cpp ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Examples for RT Manipulators C++ Library'';
    license = with lib.licenses; [ asl20 ];
  };
}
