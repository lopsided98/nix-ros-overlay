
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-motion-capture-tracking-interfaces";
  version = "1.0.6-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/motion_capture_tracking-release/archive/release/humble/motion_capture_tracking_interfaces/1.0.6-1.tar.gz";
    name = "1.0.6-1.tar.gz";
    sha256 = "78fbb9c63a3dd221f87bc15a4704b4fae3676da4ba2b05aa591a2b371ba34ab3";
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
