
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, lifecycle-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-controller-manager-msgs";
  version = "5.2.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_control-release/archive/release/rolling/controller_manager_msgs/5.2.0-1.tar.gz";
    name = "5.2.0-1.tar.gz";
    sha256 = "3b618b39f58a71edbce8a93930e6412c945772e578acf530c888243f7e927734";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces lifecycle-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Messages and services for the controller manager.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
