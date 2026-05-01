
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-ackermann-msgs";
  version = "2.0.2-r7";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ackermann_msgs-release/archive/release/lyrical/ackermann_msgs/2.0.2-7.tar.gz";
    name = "2.0.2-7.tar.gz";
    sha256 = "4ffb7a2de770d41f730a66952df76e3e9ef9ba79d5fa590813036a53ec341083";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ROS2 messages for robots using Ackermann steering.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
