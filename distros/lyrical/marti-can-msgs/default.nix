
# Copyright 2026 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-lyrical-marti-can-msgs";
  version = "1.6.1-r3";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/lyrical/marti_can_msgs/1.6.1-3.tar.gz";
    name = "1.6.1-3.tar.gz";
    sha256 = "46a0364eb5073b340dda6dfb57ac3c51a72a400d4254e03445a06f5b1babaa89";
  };

  buildType = "ament_cmake";
  buildInputs = [ ament-cmake rosidl-default-generators ];
  propagatedBuildInputs = [ rosidl-default-runtime std-msgs ];
  nativeBuildInputs = [ ament-cmake rosidl-default-generators ];

  meta = {
    description = "marti_can_msgs";
    license = with lib.licenses; [ bsdOriginal ];
  };
}
