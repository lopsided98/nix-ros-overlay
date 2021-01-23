
# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-foxy-controller-manager-msgs";
  version = "0.1.0-r1";

  src = fetchurl {
    url = "https://github.com/bmagyar/ros2_control-release/archive/release/foxy/controller_manager_msgs/0.1.0-1.tar.gz";
    name = "0.1.0-1.tar.gz";
    sha256 = "d2c11515b362ed69d7e9266fdd4b60cbe1287008a3a5c956ebf09612fd05fb30";
  };

  buildType = "ament_cmake";
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Messages and services for the controller manager.'';
    license = with lib.licenses; [ bsdOriginal ];
  };
}
