
# Copyright 2025 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, action-msgs, ament-cmake, builtin-interfaces, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-jazzy-clearpath-motor-msgs";
  version = "2.2.2-r1";

  src = fetchurl {
    url = "https://github.com/clearpath-gbp/clearpath_msgs-release/archive/release/jazzy/clearpath_motor_msgs/2.2.2-1.tar.gz";
    name = "2.2.2-1.tar.gz";
    sha256 = "f1245b099d30decf99d26642e85da96667c6b5ec0995ec070ca81dc7e021f729";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ action-msgs builtin-interfaces rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake ];

  meta = {
    description = "Messages for Clearpath Motor Drivers.";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
