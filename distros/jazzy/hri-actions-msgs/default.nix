
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-hri-actions-msgs";
  version = "2.5.0-r1";

  src = fetchurl {
    url = "https://github.com/ros4hri/hri_actions_msgs-release/archive/release/jazzy/hri_actions_msgs/2.5.0-1.tar.gz";
    name = "2.5.0-1.tar.gz";
    sha256 = "60040193f2383c85b4b6f57d5b947c83c78fe5176e29e92804bb6930296ecbbe";
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
