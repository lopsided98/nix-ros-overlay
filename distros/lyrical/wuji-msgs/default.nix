
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-cmake-pytest, ament-lint-auto, ament-lint-common, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, rosidl-runtime-py, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-wuji-msgs";
  version = "2026.10.26-r1";

  src = fetchurl {
    url = "https://github.com/wuji-technology/wuji-ros2-release/archive/release/lyrical/wuji_msgs/2026.10.26-1.tar.gz";
    name = "2026.10.26-1.tar.gz";
    sha256 = "e2912ba5813fdebba65546b3970344f9b156d7de09f0d64577e07a97636922ea";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-cmake-pytest ament-lint-auto ament-lint-common rosidl-runtime-py ];
  propagatedBuildInputs = [ geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ROS 2 messages and services for Wuji devices.";
    license = with lib.licenses; [ mit ];
  };
}
