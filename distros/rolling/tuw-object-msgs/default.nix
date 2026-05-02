
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, tuw-geo-msgs, tuw-geometry-msgs, tuw-std-msgs }:
buildRosPackage {
  pname = "ros-rolling-tuw-object-msgs";
  version = "0.2.6-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tuw_msgs-release/archive/release/rolling/tuw_object_msgs/0.2.6-2.tar.gz";
    name = "0.2.6-2.tar.gz";
    sha256 = "c55249262547b6af6667a185d28d9df7295f5f620a10a4b638a4dde82b629583";
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
