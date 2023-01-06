
# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-ros-ign-interfaces";
  version = "0.244.3-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/rolling/ros_ign_interfaces/0.244.3-1.tar.gz";
    name = "0.244.3-1.tar.gz";
    sha256 = "cda4c629f59a111943cd951d95af85f0ba9458ec5efe284108903f9ca9e87dce";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Message and service data structures for interacting with Ignition from ROS2.'';
    license = with lib.licenses; [ asl20 ];
  };
}
