
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-kilted-eventdispatch-ros2-interfaces";
  version = "0.2.31-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_eventdispatch-release/archive/release/kilted/eventdispatch_ros2_interfaces/0.2.31-1.tar.gz";
    name = "0.2.31-1.tar.gz";
    sha256 = "c14797a85cdb9c6b76ccf1d031f2ca90f77e65bf8510420968b7337ea39868f2";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-auto ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces rosidl-default-runtime ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "ROSEvent srv / msg";
    license = with lib.licenses; [ asl20 ];
  };
}
