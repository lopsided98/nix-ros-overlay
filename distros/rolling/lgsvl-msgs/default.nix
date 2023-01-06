
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-lgsvl-msgs";
  version = "0.0.4-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lgsvl_msgs-release/archive/release/rolling/lgsvl_msgs/0.0.4-2.tar.gz";
    name = "0.0.4-2.tar.gz";
    sha256 = "5fa65a21d231edbf4bb40fd9d70810e053d0bbadd5b976fbe28ea7a761ac0054";
  };

  buildType = "ament_cmake";
  buildInputs = [ ros-environment rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime sensor-msgs std-msgs ];

  meta = {
    description = ''Message definitions for interfacing with the LGSVL Simulator for ROS and ROS 2.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
