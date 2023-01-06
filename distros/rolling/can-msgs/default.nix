
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-can-msgs";
  version = "2.0.0-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_canopen-release/archive/release/rolling/can_msgs/2.0.0-3.tar.gz";
    name = "2.0.0-3.tar.gz";
    sha256 = "2acc17c31460ac06208b3b4bd128e8f6859ccdbaaa65764b438aa892d5aced5a";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''CAN related message types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
