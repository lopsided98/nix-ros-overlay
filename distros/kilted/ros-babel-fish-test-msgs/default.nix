
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-ros-babel-fish-test-msgs";
  version = "3.25.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_babel_fish-release/archive/release/kilted/ros_babel_fish_test_msgs/3.25.2-2.tar.gz";
    name = "3.25.2-2.tar.gz";
    sha256 = "5b25790b120c9808fd46a9257a0cb2dbc942fd8afce31d9f41b9211814280b0f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Test messages for the ros_babel_fish project tests.";
    license = with lib.licenses; [ mit ];
  };
}
