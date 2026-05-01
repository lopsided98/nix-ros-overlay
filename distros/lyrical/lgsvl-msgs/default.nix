
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-lint-auto, ament-lint-common, builtin-interfaces, geometry-msgs, ros-environment, rosidl-default-generators, rosidl-default-runtime, sensor-msgs, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-lgsvl-msgs";
  version = "0.0.4-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/lgsvl_msgs-release/archive/release/lyrical/lgsvl_msgs/0.0.4-6.tar.gz";
    name = "0.0.4-6.tar.gz";
    sha256 = "32d1e4d56a03df786c991448512372c1fa00c54ccab348789a50fada8bb9059f";
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
