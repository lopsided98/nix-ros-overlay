
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-hri-actions-msgs";
  version = "2.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/hri_actions_msgs-release/archive/release/humble/hri_actions_msgs/2.2.0-1.tar.gz";
    name = "2.2.0-1.tar.gz";
    sha256 = "db6451083e682ae1c5fa4eba4055ef3a8072716a6336bc3e51e81ed5963903dd";
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
