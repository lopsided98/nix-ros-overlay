
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-eloquent-lgsvl-msgs";
  version = "0.0.4-r1";

  src = fetchurl {
    url = "https://github.com/lgsvl/lgsvl_msgs-release/archive/release/eloquent/lgsvl_msgs/0.0.4-1.tar.gz";
    name = "0.0.4-1.tar.gz";
    sha256 = "d590fbd85b8fe3f7e24a294c1e5b0ce32dc4bf89f4ac9f6d3a9daad075b5371a";
  };

  buildType = "catkin";
  buildInputs = [ ros-environment rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime sensor-msgs std-msgs ];

  meta = {
    description = ''Message definitions for interfacing with the LGSVL Simulator for ROS and ROS 2.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
