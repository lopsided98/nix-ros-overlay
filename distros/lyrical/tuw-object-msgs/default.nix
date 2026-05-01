
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, tuw-geo-msgs, tuw-geometry-msgs, tuw-std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-tuw-object-msgs";
  version = "0.2.6-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tuw_msgs-release/archive/release/lyrical/tuw_object_msgs/0.2.6-3.tar.gz";
    name = "0.2.6-3.tar.gz";
    sha256 = "b8713e7bd168837ec354c79e027d9b4acd6bbce96bb78a0dca4b0b2e04bff2fe";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime tuw-geo-msgs tuw-geometry-msgs tuw-std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "The tuw_object_msgs package. This pkg provides a set of messages used to detect, map and track objects of different types.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
