
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake-ros, builtin-interfaces, rcl-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-rolling-rosapi-msgs";
  version = "1.3.2-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/rolling/rosapi_msgs/1.3.2-2.tar.gz";
    name = "1.3.2-2.tar.gz";
    sha256 = "a1e57618fa5e99376057f1895458080b5231285c6d397077f08e6b66f85d9e06";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake-ros rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces rcl-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake-ros rosidl-default-generators ];

  meta = {
    description = ''Provides service calls for getting ros meta-information, like list of
    topics, services, params, etc.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
