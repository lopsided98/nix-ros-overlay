
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-tuw-multi-robot-msgs";
  version = "0.0.15-r3";

  src = fetchurl {
    url = "https://github.com/tuw-robotics/tuw_msgs-release/archive/release/foxy/tuw_multi_robot_msgs/0.0.15-3.tar.gz";
    name = "0.0.15-3.tar.gz";
    sha256 = "a71eba7cf4955683708975c41fd45f90ef0211ccd0aecd891edc228bc4632465";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''The tuw_multi_robot_msgs package contains messages for sending graph, route and sync data over topics.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
