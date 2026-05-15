
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-turtlesim-msgs";
  version = "1.11.1-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_tutorials-release/archive/release/rolling/turtlesim_msgs/1.11.1-1.tar.gz";
    name = "1.11.1-1.tar.gz";
    sha256 = "20d4e637aaf24cb265d9e85317021769dc648f84dedbf9e2163d2dc64058c3f6";
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
