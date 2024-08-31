
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-ros-babel-fish-test-msgs";
  version = "0.9.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_babel_fish-release/archive/release/rolling/ros_babel_fish_test_msgs/0.9.3-1.tar.gz";
    name = "0.9.3-1.tar.gz";
    sha256 = "275b8f8ded42b85c08697c9502dfd9a17af4bab3d29b428552e37d2c7d7ed2af";
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
