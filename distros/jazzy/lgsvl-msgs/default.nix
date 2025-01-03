
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-lgsvl-msgs";
  version = "0.0.4-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lgsvl_msgs-release/archive/release/jazzy/lgsvl_msgs/0.0.4-5.tar.gz";
    name = "0.0.4-5.tar.gz";
    sha256 = "076966c84841f3c76c673e33fd114088d9212cc13ce261022b9e8d1fc42770ab";
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
