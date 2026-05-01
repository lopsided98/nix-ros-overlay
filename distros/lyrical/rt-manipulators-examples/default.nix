
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rt-manipulators-cpp }:
buildRosPackage {
  pname = "ros-lyrical-rt-manipulators-examples";
  version = "1.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rt_manipulators_cpp-release/archive/release/lyrical/rt_manipulators_examples/1.0.0-5.tar.gz";
    name = "1.0.0-5.tar.gz";
    sha256 = "d808805515c5e00ec919bc3ccd8485688ed9b5f7e2fd2c8b8941a6daee7055e4";
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
