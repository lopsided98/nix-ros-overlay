
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-can-msgs";
  version = "2.0.0-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_canopen-release/archive/release/rolling/can_msgs/2.0.0-5.tar.gz";
    name = "2.0.0-5.tar.gz";
    sha256 = "4b57f5db7cb0119be1217d2b6857ca3b0f9cf0567b821f54a1f71dd739e341fd";
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
