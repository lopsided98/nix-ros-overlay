
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-can-msgs";
  version = "2.0.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_canopen-release/archive/release/rolling/can_msgs/2.0.0-6.tar.gz";
    name = "2.0.0-6.tar.gz";
    sha256 = "f9cd8bfed121f4448351474698b695b1a0ec4ae74ab4d11b5412fed71cbae89d";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "CAN related message types.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
