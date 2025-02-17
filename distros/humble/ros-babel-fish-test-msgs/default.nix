
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-ros-babel-fish-test-msgs";
  version = "0.25.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_babel_fish-release/archive/release/humble/ros_babel_fish_test_msgs/0.25.2-1.tar.gz";
    name = "0.25.2-1.tar.gz";
    sha256 = "095e693aec7ec557413769d889308d3a5615211f865d4e6e220249eb25920516";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Test messages for the ros_babel_fish project tests.";
    license = with lib.licenses; [ mit ];
  };
}
