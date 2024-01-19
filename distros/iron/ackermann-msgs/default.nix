
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-iron-ackermann-msgs";
  version = "2.0.2-r5";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ackermann_msgs-release/archive/release/iron/ackermann_msgs/2.0.2-5.tar.gz";
    name = "2.0.2-5.tar.gz";
    sha256 = "0077a85b887322ee9eeae8c101074a69c9fac48b2ac8dc4a8caafbc2df97be75";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''ROS2 messages for robots using Ackermann steering.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
