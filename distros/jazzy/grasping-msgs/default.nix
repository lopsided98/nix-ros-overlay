
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, geometry-msgs, moveit-msgs, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, shape-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-grasping-msgs";
  version = "0.5.0-r1";

  src = fetchurl {
    url = "https://github.com/mikeferguson/grasping_msgs-ros2-gbp/archive/release/jazzy/grasping_msgs/0.5.0-1.tar.gz";
    name = "0.5.0-1.tar.gz";
    sha256 = "12e00b53b08b9ccf74726a5e774cab38dac5d805f933d1e4434f3efc5c87741f";
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
