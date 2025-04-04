
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-humble-lgsvl-msgs";
  version = "0.0.4-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lgsvl_msgs-release/archive/release/humble/lgsvl_msgs/0.0.4-3.tar.gz";
    name = "0.0.4-3.tar.gz";
    sha256 = "0cacb1bdf9448391eafbe75a1076838f44c83e6676180b7ad82bdfe700097e87";
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
