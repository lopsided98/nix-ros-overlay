
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-kilted-can-msgs";
  version = "2.0.0-r6";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_canopen-release/archive/release/kilted/can_msgs/2.0.0-6.tar.gz";
    name = "2.0.0-6.tar.gz";
    sha256 = "a4b905e32f3ffa08526a625a0fa94460bba6021d75242a629ddb4113ca1a7aad";
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
