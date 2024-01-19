
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, moveit-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, shape-msgs }:
buildRosPackage {
  pname = "ros-humble-grasping-msgs";
  version = "0.4.0-r1";

  src = fetchurl {
    url = "https://github.com/mikeferguson/grasping_msgs-ros2-gbp/archive/release/humble/grasping_msgs/0.4.0-1.tar.gz";
    name = "0.4.0-1.tar.gz";
    sha256 = "d1782b7c1cd993b36a2a6615c9b79db45608f80c017deabdc313cdfeb9d8da14";
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
