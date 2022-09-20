
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, moveit-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, shape-msgs }:
buildRosPackage {
  pname = "ros-foxy-grasping-msgs";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/mikeferguson/grasping_msgs-ros2-gbp/archive/release/foxy/grasping_msgs/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "9b3cfc44a96fbf4c0b0a59489d7693aa3d696006aa7f184ade66e2e5cde04b00";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ geometry-msgs moveit-msgs rosidl-default-runtime sensor-msgs shape-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = ''Messages for describing objects and how to grasp them.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
