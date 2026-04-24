
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-ros-babel-fish-test-msgs";
  version = "4.26.43-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_babel_fish-release/archive/release/rolling/ros_babel_fish_test_msgs/4.26.43-1.tar.gz";
    name = "4.26.43-1.tar.gz";
    sha256 = "d167b2256282027912776172013fbc44cad9cd7c58f9e65b075e628fba5c909d";
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
