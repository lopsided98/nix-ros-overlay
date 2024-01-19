
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-robot-controllers-msgs";
  version = "0.9.3-r1";

  src = fetchurl {
    url = "https://github.com/fetchrobotics-gbp/robot_controllers-ros2-release/archive/release/humble/robot_controllers_msgs/0.9.3-1.tar.gz";
    name = "0.9.3-1.tar.gz";
    sha256 = "dd8b03b0617a7e93dbcd175615138c8f2f4a793aab2be3bbd273c9cd5fdae18f";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-generators rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Messages for use with robot_controllers framework.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
