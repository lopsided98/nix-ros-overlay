
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-motion-capture-tracking-interfaces";
  version = "1.0.3-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/motion_capture_tracking-release/archive/release/jazzy/motion_capture_tracking_interfaces/1.0.3-3.tar.gz";
    name = "1.0.3-3.tar.gz";
    sha256 = "322df26380381b19b1ae8e5fb88cd041e503d014cace35f9f768dbb445f9cde9";
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
