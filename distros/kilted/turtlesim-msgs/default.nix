
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-kilted-turtlesim-msgs";
  version = "1.9.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_tutorials-release/archive/release/kilted/turtlesim_msgs/1.9.4-1.tar.gz";
    name = "1.9.4-1.tar.gz";
    sha256 = "f1b247dfc2ff53a0b5bf92dac685d1220cfc105de0e09308b654390fedb8eb1c";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "turtlesim messages.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
