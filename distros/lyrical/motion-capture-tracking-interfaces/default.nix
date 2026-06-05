
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-motion-capture-tracking-interfaces";
  version = "1.0.8-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/motion_capture_tracking-release/archive/release/lyrical/motion_capture_tracking_interfaces/1.0.8-1.tar.gz";
    name = "1.0.8-1.tar.gz";
    sha256 = "6049a04a1b26db3894522134188d599b072b537333cb4787a4f629b5c25aa648";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  checkInputs = [ ament-lint-common ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "Interfaces for motion_capture_tracking package.";
    license = with lib.licenses; [ mit ];
  };
}
