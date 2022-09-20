
# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-galactic-ros-ign-interfaces";
  version = "0.233.4-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros_ign-release/archive/release/galactic/ros_ign_interfaces/0.233.4-1.tar.gz";
    name = "0.233.4-1.tar.gz";
    sha256 = "4787706d92b1bb6599ac170efdd55b03c698e921fa805a973b0a1c0eeb20bd80";
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
