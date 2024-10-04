
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, moveit-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, shape-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-iron-grasping-msgs";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/mikeferguson/grasping_msgs-ros2-gbp/archive/release/iron/grasping_msgs/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "d7dc2967d5d1ec2740be9ec5a89171111377ac3288c0e5365279aeec4a599ddc";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ geometry-msgs moveit-msgs rosidl-default-runtime sensor-msgs shape-msgs std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Messages for describing objects and how to grasp them.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
