
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-cppcheck, ament-cmake-gtest, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-tuw-multi-robot-msgs";
  version = "0.2.6-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/tuw_msgs-release/archive/release/lyrical/tuw_multi_robot_msgs/0.2.6-3.tar.gz";
    name = "0.2.6-3.tar.gz";
    sha256 = "c6fc01afbaaa6940c22a704b26ce388ec22c32a56ab7c974be23fa2d1d866f13";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-cppcheck ament-cmake-gtest ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "The tuw_multi_robot_msgs package contains messages for sending graph, route and sync data over topics.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
