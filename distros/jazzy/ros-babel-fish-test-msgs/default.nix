
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-ros-babel-fish-test-msgs";
  version = "2.25.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_babel_fish-release/archive/release/jazzy/ros_babel_fish_test_msgs/2.25.2-1.tar.gz";
    name = "2.25.2-1.tar.gz";
    sha256 = "abd3c931eb96ab35869a249c055634ba9c0c240ae2347a099ce346767a7c99a7";
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
