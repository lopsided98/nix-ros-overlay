
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, moveit-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, shape-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-grasping-msgs";
  version = "0.5.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/grasping_msgs-release/archive/release/lyrical/grasping_msgs/0.5.0-3.tar.gz";
    name = "0.5.0-3.tar.gz";
    sha256 = "9e00f03b6257d0848be596ce1fb7e97078b7e9c791865b197d2009137a57fcac";
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
