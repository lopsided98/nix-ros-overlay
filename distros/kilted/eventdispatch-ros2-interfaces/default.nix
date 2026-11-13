
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-auto, ament-lint-common, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime }:
buildRosPackage {
  pname = "ros-kilted-eventdispatch-ros2-interfaces";
  version = "0.2.32-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/ros2_eventdispatch-release/archive/release/kilted/eventdispatch_ros2_interfaces/0.2.32-1.tar.gz";
    name = "0.2.32-1.tar.gz";
    sha256 = "61c74fac666c495efcb45727e9f13c8082f9895d98b3256a196cd2f2b988706b";
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
