
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-marti-introspection-msgs";
  version = "1.5.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/jazzy/marti_introspection_msgs/1.5.2-3.tar.gz";
    name = "1.5.2-3.tar.gz";
    sha256 = "5491f3a15c619d012467c25a00821eb18f6e1c257606ec6d7bcfe946ae4e6d56";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "marti_introspection_msgs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
