
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rclcpp, rt-manipulators-cpp }:
buildRosPackage {
  pname = "ros-kilted-rt-manipulators-examples";
  version = "1.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rt_manipulators_cpp-release/archive/release/kilted/rt_manipulators_examples/1.0.0-4.tar.gz";
    name = "1.0.0-4.tar.gz";
    sha256 = "b23dfcee2c0402071c95627b5098ac9d13ca9882bc03316ed99e54938b7887b2";
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
