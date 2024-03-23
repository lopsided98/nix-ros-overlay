
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, ament-lint-common, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-motion-capture-tracking-interfaces";
  version = "1.0.3-r2";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/motion_capture_tracking-release/archive/release/rolling/motion_capture_tracking_interfaces/1.0.3-2.tar.gz";
    name = "1.0.3-2.tar.gz";
    sha256 = "0b9448bb3b6247cf3407d03c8b4fd35a4de713750e641ada1dea5d8188af6c88";
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
