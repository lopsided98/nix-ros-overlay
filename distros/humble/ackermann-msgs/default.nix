
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-ackermann-msgs";
  version = "2.0.2-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ackermann_msgs-release/archive/release/humble/ackermann_msgs/2.0.2-3.tar.gz";
    name = "2.0.2-3.tar.gz";
    sha256 = "c718834cdc18318cc85329d1fbaf14548eb9356f865c16bbbfed5d355870e690";
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
