
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-hri-actions-msgs";
  version = "2.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hri_actions_msgs-release/archive/release/lyrical/hri_actions_msgs/2.5.0-3.tar.gz";
    name = "2.5.0-3.tar.gz";
    sha256 = "e229d371ff78cdf7eca9b2085dbe5138580d37c1b34d1e6f41026d3b0d848e91";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Action definitions useful for Human-Robot Interaction";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
