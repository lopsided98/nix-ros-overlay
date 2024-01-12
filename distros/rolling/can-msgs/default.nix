
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-can-msgs";
  version = "2.0.0-r4";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_canopen-release/archive/release/rolling/can_msgs/2.0.0-4.tar.gz";
    name = "2.0.0-4.tar.gz";
    sha256 = "fae6352892407169ad8bc5a8713f7950741a3f7f718292eaf935df38d821bd99";
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
