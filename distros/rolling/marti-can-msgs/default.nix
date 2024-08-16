
# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ament-cmake, rosidl-default-generators, rosidl-default-runtime, std-msgs }:
buildRosPackage {
  pname = "ros-rolling-marti-can-msgs";
  version = "1.6.0-r1";

  src = fetchurl {
    url = "https://github.com/ros2-gbp/marti_messages-release/archive/release/rolling/marti_can_msgs/1.6.0-1.tar.gz";
    name = "1.6.0-1.tar.gz";
    sha256 = "a08171d648a6c18192d6a57132c174c35b20780c6fbb8ceb2af587da7e896896";
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
