
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, tuw-geo-msgs, tuw-geometry-msgs, tuw-std-msgs }:
buildRosPackage {
  pname = "ros-kilted-tuw-object-msgs";
  version = "0.2.5-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tuw_msgs-release/archive/release/kilted/tuw_object_msgs/0.2.5-2.tar.gz";
    name = "0.2.5-2.tar.gz";
    sha256 = "28f4fc2af1843398b8543b7e17471b59a1ab6196773cdc065af1565c4b95f679";
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
