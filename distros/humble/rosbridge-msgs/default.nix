
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-humble-rosbridge-msgs";
  version = "2.0.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/humble/rosbridge_msgs/2.0.1-1.tar.gz";
    name = "2.0.1-1.tar.gz";
    sha256 = "ece6b6f3c2a63a6d3192b7f2805a96875f5832b883893d9524ab6fd2c0b86a5c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros builtin-interfaces rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake-ros rosidl-default-generators ];

  meta = {
    description = "Package containing message files";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
