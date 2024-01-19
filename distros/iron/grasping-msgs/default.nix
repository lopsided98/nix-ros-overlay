
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, moveit-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, shape-msgs }:
buildRosPackage {
  pname = "ros-iron-grasping-msgs";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/mikeferguson/grasping_msgs-ros2-gbp/archive/release/iron/grasping_msgs/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "e49ce72f8be69efb79da3830b8842d08d4c8f51770a988a6cda007721038701f";
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
