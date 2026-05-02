
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-lgsvl-msgs";
  version = "0.0.4-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lgsvl_msgs-release/archive/release/rolling/lgsvl_msgs/0.0.4-5.tar.gz";
    name = "0.0.4-5.tar.gz";
    sha256 = "73834a87557de32165cf440e4c531c1650883e34cd666dec8c97c2bfe7000f55";
  };

  buildType = "ament_cmake";
  buildInputs = [ ros-environment rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime sensor-msgs std-msgs ];

  meta = {
    description = "Message definitions for interfacing with the LGSVL Simulator for ROS and ROS 2.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
