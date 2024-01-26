
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, builtin-interfaces, geometry-msgs, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-motion-capture-tracking-interfaces";
  version = "1.0.2-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/motion_capture_tracking-release/archive/release/rolling/motion_capture_tracking_interfaces/1.0.2-1.tar.gz";
    name = "1.0.2-1.tar.gz";
    sha256 = "14de50893c23acf8f3f165d80cfd2b1b3351fab9b5420b34967daf4c25d4d732";
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
