
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-hri-actions-msgs";
  version = "2.5.0-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/hri_actions_msgs-release/archive/release/rolling/hri_actions_msgs/2.5.0-2.tar.gz";
    name = "2.5.0-2.tar.gz";
    sha256 = "95661b0a8fee3190be32d5cb1194c4b4113ceb886f96fec0516c6837a98f14ee";
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
