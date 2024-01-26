
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-humble-motion-capture-tracking-interfaces";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/motion_capture_tracking-release/archive/release/humble/motion_capture_tracking_interfaces/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "c1dabe2cc9555eb05489fcef48a08b4b50f8b757a0f4145c4c1091b5012d4ebb";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ builtin-interfaces geometry-msgs rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = ''Interfaces for motion_capture_tracking package.'';
    license = with lib.licenses; [ mit ];
  };
}
