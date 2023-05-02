
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-foxy-tuw-object-msgs";
  version = "0.0.15-r3";

  src = fetchurl {
    url = "https://github.com/tuw-robotics/tuw_msgs-release/archive/release/foxy/tuw_object_msgs/0.0.15-3.tar.gz";
    name = "0.0.15-3.tar.gz";
    sha256 = "2a6a2ff0a286cc4209c6da5b63f764ffa4950ea4e3e13b4da0408830006dac27";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''The tuw_object_msgs package. This pkg provides a set of messages used to detect, map and track objects of different types.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
